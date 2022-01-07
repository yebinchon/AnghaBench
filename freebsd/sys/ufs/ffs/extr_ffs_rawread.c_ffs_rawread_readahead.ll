; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_readahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.buf = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.inode = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i32 0, align 4
@bdone = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64, i32, i64, %struct.thread*, %struct.buf*)* @ffs_rawread_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_rawread_readahead(%struct.vnode* %0, i64 %1, i32 %2, i64 %3, %struct.thread* %4, %struct.buf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vnode*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.inode*, align 8
  %22 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.thread* %4, %struct.thread** %12, align 8
  store %struct.buf* %5, %struct.buf** %13, align 8
  %23 = load %struct.vnode*, %struct.vnode** %8, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load %struct.vnode*, %struct.vnode** %8, align 8
  %30 = call %struct.inode* @VTOI(%struct.vnode* %29)
  store %struct.inode* %30, %struct.inode** %21, align 8
  %31 = load %struct.inode*, %struct.inode** %21, align 8
  %32 = call %struct.vnode* @ITODEVVP(%struct.inode* %31)
  store %struct.vnode* %32, %struct.vnode** %19, align 8
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.buf*, %struct.buf** %13, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.buf*, %struct.buf** %13, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = load %struct.buf*, %struct.buf** %13, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %45, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %6
  %52 = load %struct.buf*, %struct.buf** %13, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load %struct.buf*, %struct.buf** %13, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load %struct.buf*, %struct.buf** %13, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66, %6
  %68 = load %struct.buf*, %struct.buf** %13, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 7
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @BIO_READ, align 4
  %71 = load %struct.buf*, %struct.buf** %13, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @bdone, align 4
  %74 = load %struct.buf*, %struct.buf** %13, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.buf*, %struct.buf** %13, align 8
  %78 = getelementptr inbounds %struct.buf, %struct.buf* %77, i32 0, i32 9
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %18, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %18, align 4
  %84 = srem i32 %82, %83
  %85 = load i32, i32* @DEV_BSIZE, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %67
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %7, align 4
  br label %217

92:                                               ; preds = %67
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.buf*, %struct.buf** %13, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.buf*, %struct.buf** %13, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.vnode*, %struct.vnode** %8, align 8
  %99 = load %struct.buf*, %struct.buf** %13, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ufs_bmaparray(%struct.vnode* %98, i32 %101, i32* %22, i32* null, i32* %20, i32* null)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %7, align 4
  br label %217

107:                                              ; preds = %92
  %108 = load i32, i32* %22, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %159

110:                                              ; preds = %107
  %111 = load %struct.buf*, %struct.buf** %13, align 8
  %112 = getelementptr inbounds %struct.buf, %struct.buf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @DEV_BSIZE, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = add i64 %113, %117
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %110
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* @DEV_BSIZE, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sub nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = load %struct.buf*, %struct.buf** %13, align 8
  %130 = getelementptr inbounds %struct.buf, %struct.buf* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %122, %110
  %132 = load %struct.buf*, %struct.buf** %13, align 8
  %133 = getelementptr inbounds %struct.buf, %struct.buf* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.buf*, %struct.buf** %13, align 8
  %137 = getelementptr inbounds %struct.buf, %struct.buf* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.buf*, %struct.buf** %13, align 8
  %139 = call i64 @vmapbuf(%struct.buf* %138, i32 1)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @EFAULT, align 4
  store i32 %142, i32* %7, align 4
  br label %217

143:                                              ; preds = %131
  %144 = call i32 (...) @maybe_yield()
  %145 = load %struct.buf*, %struct.buf** %13, align 8
  %146 = getelementptr inbounds %struct.buf, %struct.buf* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.buf*, %struct.buf** %13, align 8
  %149 = getelementptr inbounds %struct.buf, %struct.buf* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @bzero(i64 %147, i32 %150)
  %152 = load %struct.buf*, %struct.buf** %13, align 8
  %153 = getelementptr inbounds %struct.buf, %struct.buf* %152, i32 0, i32 8
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @B_DONE, align 4
  %155 = load %struct.buf*, %struct.buf** %13, align 8
  %156 = getelementptr inbounds %struct.buf, %struct.buf* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %7, align 4
  br label %217

159:                                              ; preds = %107
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.buf*, %struct.buf** %13, align 8
  %164 = getelementptr inbounds %struct.buf, %struct.buf* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* @DEV_BSIZE, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load %struct.buf*, %struct.buf** %13, align 8
  %171 = getelementptr inbounds %struct.buf, %struct.buf* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 4
  %172 = load %struct.buf*, %struct.buf** %13, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 5
  store i32 %169, i32* %173, align 8
  %174 = load %struct.buf*, %struct.buf** %13, align 8
  %175 = getelementptr inbounds %struct.buf, %struct.buf* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @DEV_BSIZE, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = add i64 %176, %180
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 1, %183
  %185 = mul nsw i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = icmp ugt i64 %181, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %159
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %20, align 4
  %191 = add nsw i32 1, %190
  %192 = mul nsw i32 %189, %191
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @DEV_BSIZE, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sub nsw i32 %192, %195
  %197 = sext i32 %196 to i64
  %198 = load %struct.buf*, %struct.buf** %13, align 8
  %199 = getelementptr inbounds %struct.buf, %struct.buf* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %188, %159
  %201 = load %struct.buf*, %struct.buf** %13, align 8
  %202 = getelementptr inbounds %struct.buf, %struct.buf* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.buf*, %struct.buf** %13, align 8
  %206 = getelementptr inbounds %struct.buf, %struct.buf* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 4
  %207 = load %struct.buf*, %struct.buf** %13, align 8
  %208 = call i64 @vmapbuf(%struct.buf* %207, i32 1)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @EFAULT, align 4
  store i32 %211, i32* %7, align 4
  br label %217

212:                                              ; preds = %200
  %213 = load %struct.vnode*, %struct.vnode** %19, align 8
  %214 = getelementptr inbounds %struct.vnode, %struct.vnode* %213, i32 0, i32 0
  %215 = load %struct.buf*, %struct.buf** %13, align 8
  %216 = call i32 @BO_STRATEGY(i32* %214, %struct.buf* %215)
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %212, %210, %143, %141, %105, %90
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local %struct.vnode* @ITODEVVP(%struct.inode*) #1

declare dso_local i32 @ufs_bmaparray(%struct.vnode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @vmapbuf(%struct.buf*, i32) #1

declare dso_local i32 @maybe_yield(...) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @BO_STRATEGY(i32*, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
