; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_mapsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_mapsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64, i32 }
%struct.cg = type { i32, i32 }

@NBBY = common dso_local global i32 0, align 4
@fragtbl = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"ffs_alloccg: map corrupted: start %d len %d offset %d %ld\00", align 1
@around = common dso_local global i32* null, align 8
@inside = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"ffs_alloccg: block not in map: bno %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs*, %struct.cg*, i64, i32)* @ffs_mapsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_mapsearch(%struct.fs* %0, %struct.cg* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs*, align 8
  %7 = alloca %struct.cg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %6, align 8
  store %struct.cg* %1, %struct.cg** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.fs*, %struct.fs** %6, align 8
  %23 = call i32 @UFS_FSNEEDSWAP(%struct.fs* %22)
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.fs*, %struct.fs** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @dtogd(%struct.fs* %27, i64 %28)
  %30 = load i32, i32* @NBBY, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %11, align 4
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.cg*, %struct.cg** %7, align 8
  %34 = getelementptr inbounds %struct.cg, %struct.cg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %21, align 4
  %37 = call i32 @ufs_rw32(i32 %35, i32 %36)
  %38 = load i32, i32* @NBBY, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.fs*, %struct.fs** %6, align 8
  %42 = getelementptr inbounds %struct.fs, %struct.fs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NBBY, align 4
  %45 = call i32 @howmany(i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.cg*, %struct.cg** %7, align 8
  %52 = load i32, i32* %21, align 4
  %53 = call i32* @cg_blksfree_swap(%struct.cg* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i64*, i64** @fragtbl, align 8
  %58 = load %struct.fs*, %struct.fs** %6, align 8
  %59 = getelementptr inbounds %struct.fs, %struct.fs* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = load %struct.fs*, %struct.fs** %6, align 8
  %68 = getelementptr inbounds %struct.fs, %struct.fs* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @NBBY, align 4
  %71 = sext i32 %70 to i64
  %72 = urem i64 %69, %71
  %73 = add i64 %66, %72
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = call i32 @scanc(i32 %50, i32* %56, i32* %63, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %127

79:                                               ; preds = %40
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.cg*, %struct.cg** %7, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32* @cg_blksfree_swap(%struct.cg* %83, i32 %84)
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i64*, i64** @fragtbl, align 8
  %88 = load %struct.fs*, %struct.fs** %6, align 8
  %89 = getelementptr inbounds %struct.fs, %struct.fs* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = load %struct.fs*, %struct.fs** %6, align 8
  %98 = getelementptr inbounds %struct.fs, %struct.fs* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @NBBY, align 4
  %101 = sext i32 %100 to i64
  %102 = urem i64 %99, %101
  %103 = add i64 %96, %102
  %104 = trunc i64 %103 to i32
  %105 = shl i32 1, %104
  %106 = call i32 @scanc(i32 %82, i32* %86, i32* %93, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %79
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.cg*, %struct.cg** %7, align 8
  %114 = getelementptr inbounds %struct.cg, %struct.cg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @ufs_rw32(i32 %115, i32 %116)
  %118 = load %struct.cg*, %struct.cg** %7, align 8
  %119 = load i32, i32* %21, align 4
  %120 = call i32* @cg_blksfree_swap(%struct.cg* %118, i32 %119)
  %121 = ptrtoint i32* %120 to i64
  %122 = load %struct.cg*, %struct.cg** %7, align 8
  %123 = ptrtoint %struct.cg* %122 to i64
  %124 = sub nsw i64 %121, %123
  %125 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %111, i32 %112, i32 %117, i64 %124)
  br label %126

126:                                              ; preds = %109, %79
  br label %127

127:                                              ; preds = %126, %40
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i32, i32* @NBBY, align 4
  %134 = mul nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @ufs_rw32(i32 %135, i32 %136)
  %138 = load %struct.cg*, %struct.cg** %7, align 8
  %139 = getelementptr inbounds %struct.cg, %struct.cg* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @NBBY, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %195, %127
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %203

147:                                              ; preds = %143
  %148 = load %struct.fs*, %struct.fs** %6, align 8
  %149 = load %struct.cg*, %struct.cg** %7, align 8
  %150 = load i32, i32* %21, align 4
  %151 = call i32* @cg_blksfree_swap(%struct.cg* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @blkmap(%struct.fs* %148, i32* %151, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = shl i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load i32*, i32** @around, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %16, align 4
  %161 = load i32*, i32** @inside, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %166

166:                                              ; preds = %191, %147
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.fs*, %struct.fs** %6, align 8
  %170 = getelementptr inbounds %struct.fs, %struct.fs* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %171, %173
  %175 = icmp ule i64 %168, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %166
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %16, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* %17, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %5, align 4
  br label %207

186:                                              ; preds = %176
  %187 = load i32, i32* %16, align 4
  %188 = shl i32 %187, 1
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %17, align 4
  %190 = shl i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %18, align 4
  br label %166

194:                                              ; preds = %166
  br label %195

195:                                              ; preds = %194
  %196 = load %struct.fs*, %struct.fs** %6, align 8
  %197 = getelementptr inbounds %struct.fs, %struct.fs* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %10, align 4
  br label %143

203:                                              ; preds = %143
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %205)
  store i32 -1, i32* %5, align 4
  br label %207

207:                                              ; preds = %203, %182
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i32 @UFS_FSNEEDSWAP(%struct.fs*) #1

declare dso_local i32 @dtogd(%struct.fs*, i64) #1

declare dso_local i32 @ufs_rw32(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @scanc(i32, i32*, i32*, i32) #1

declare dso_local i32* @cg_blksfree_swap(%struct.cg*, i32) #1

declare dso_local i32 @errx(i32, i8*, i64, ...) #1

declare dso_local i32 @blkmap(%struct.fs*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
