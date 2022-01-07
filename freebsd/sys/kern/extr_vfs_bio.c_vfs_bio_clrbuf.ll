; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_clrbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_clrbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.buf = type { i32, i32, i32, i64, %struct.TYPE_4__**, i64, i32 }

@B_VMIO = common dso_local global i32 0, align 4
@B_MALLOC = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@bogus_page = common dso_local global %struct.TYPE_4__* null, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_bio_clrbuf(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %9 = load %struct.buf*, %struct.buf** %2, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @B_VMIO, align 4
  %13 = load i32, i32* @B_MALLOC, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @B_VMIO, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = call i32 @clrbuf(%struct.buf* %19)
  br label %194

21:                                               ; preds = %1
  %22 = load i32, i32* @B_INVAL, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.buf*, %struct.buf** %2, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @BIO_ERROR, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.buf*, %struct.buf** %2, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.buf*, %struct.buf** %2, align 8
  %35 = call i32 @vfs_busy_pages_acquire(%struct.buf* %34)
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %186, %21
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.buf*, %struct.buf** %2, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %189

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.buf*, %struct.buf** %2, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.buf*, %struct.buf** %2, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @imin(i32 %50, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %47
  %68 = load %struct.buf*, %struct.buf** %2, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bogus_page, align 8
  %76 = icmp eq %struct.TYPE_4__* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %186

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @DEV_BSIZE, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @DEV_BSIZE, align 4
  %86 = sdiv i32 %84, %85
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %4, align 4
  %90 = shl i32 %88, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.buf*, %struct.buf** %2, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 4
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %78
  br label %186

105:                                              ; preds = %78
  %106 = load %struct.buf*, %struct.buf** %2, align 8
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %105
  %119 = load %struct.buf*, %struct.buf** %2, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 4
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 %123
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %127, %128
  %130 = call i32 @pmap_zero_page_area(%struct.TYPE_4__* %125, i32 %126, i32 %129)
  br label %169

131:                                              ; preds = %105
  br label %132

132:                                              ; preds = %162, %131
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %132
  %137 = load %struct.buf*, %struct.buf** %2, align 8
  %138 = getelementptr inbounds %struct.buf, %struct.buf* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %141
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %4, align 4
  %147 = shl i32 1, %146
  %148 = and i32 %145, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %136
  %151 = load %struct.buf*, %struct.buf** %2, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 4
  %153 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %153, i64 %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @DEV_BSIZE, align 4
  %160 = call i32 @pmap_zero_page_area(%struct.TYPE_4__* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %150, %136
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* @DEV_BSIZE, align 4
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %132

168:                                              ; preds = %132
  br label %169

169:                                              ; preds = %168, %118
  %170 = load %struct.buf*, %struct.buf** %2, align 8
  %171 = getelementptr inbounds %struct.buf, %struct.buf* %170, i32 0, i32 4
  %172 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %172, i64 %174
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @DEV_BSIZE, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sub nsw i32 %180, %181
  %183 = load i32, i32* @DEV_BSIZE, align 4
  %184 = call i32 @roundup2(i32 %182, i32 %183)
  %185 = call i32 @vm_page_set_valid_range(%struct.TYPE_4__* %176, i32 %179, i32 %184)
  br label %186

186:                                              ; preds = %169, %104, %77
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %41

189:                                              ; preds = %41
  %190 = load %struct.buf*, %struct.buf** %2, align 8
  %191 = call i32 @vfs_busy_pages_release(%struct.buf* %190)
  %192 = load %struct.buf*, %struct.buf** %2, align 8
  %193 = getelementptr inbounds %struct.buf, %struct.buf* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  br label %194

194:                                              ; preds = %189, %18
  ret void
}

declare dso_local i32 @clrbuf(%struct.buf*) #1

declare dso_local i32 @vfs_busy_pages_acquire(%struct.buf*) #1

declare dso_local i32 @imin(i32, i64) #1

declare dso_local i32 @pmap_zero_page_area(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vm_page_set_valid_range(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vfs_busy_pages_release(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
