; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_freeclusterchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_freeclusterchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i32 }
%struct.buf = type { i64 }

@CLUST_FIRST = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@MSDOSFSFREE = common dso_local global i32 0, align 4
@CLUST_RSRVD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeclusterchain(%struct.msdosfsmount* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msdosfsmount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.buf* null, %struct.buf** %7, align 8
  store i64 -1, i64* %13, align 8
  %14 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %15 = call i32 @MSDOSFS_LOCK_MP(%struct.msdosfsmount* %14)
  br label %16

16:                                               ; preds = %164, %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @CLUST_FIRST, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %23 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %165

28:                                               ; preds = %26
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @FATOFS(%struct.msdosfsmount* %29, i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @fatblock(%struct.msdosfsmount* %32, i64 %33, i64* %8, i64* %10, i64* %9)
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %28
  %39 = load %struct.buf*, %struct.buf** %7, align 8
  %40 = icmp ne %struct.buf* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %43 = load %struct.buf*, %struct.buf** %7, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @updatefats(%struct.msdosfsmount* %42, %struct.buf* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %48 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* @NOCRED, align 4
  %53 = call i32 @bread(i32 %49, i64 %50, i64 %51, i32 %52, %struct.buf** %7)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %58 = call i32 @MSDOSFS_UNLOCK_MP(%struct.msdosfsmount* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %176

60:                                               ; preds = %46
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %60, %28
  %63 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @usemap_free(%struct.msdosfsmount* %63, i64 %64)
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %67 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %141 [
    i32 130, label %69
    i32 129, label %107
    i32 128, label %121
  ]

69:                                               ; preds = %62
  %70 = load %struct.buf*, %struct.buf** %7, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i64 @getushort(i64 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %5, align 8
  %77 = and i64 %76, 1
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load i64, i64* %12, align 8
  %81 = ashr i64 %80, 4
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %12, align 8
  %83 = and i64 %82, 15
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* @MSDOSFSFREE, align 4
  %85 = shl i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %98

89:                                               ; preds = %69
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %12, align 8
  %92 = and i64 %91, 61440
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* @MSDOSFSFREE, align 4
  %94 = and i32 %93, 4095
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %12, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %12, align 8
  br label %98

98:                                               ; preds = %89, %79
  %99 = load %struct.buf*, %struct.buf** %7, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64, i64* %12, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @putushort(i64 %103, i32 %105)
  br label %141

107:                                              ; preds = %62
  %108 = load %struct.buf*, %struct.buf** %7, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i64 @getushort(i64 %112)
  store i64 %113, i64* %5, align 8
  %114 = load %struct.buf*, %struct.buf** %7, align 8
  %115 = getelementptr inbounds %struct.buf, %struct.buf* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* @MSDOSFSFREE, align 4
  %120 = call i32 @putushort(i64 %118, i32 %119)
  br label %141

121:                                              ; preds = %62
  %122 = load %struct.buf*, %struct.buf** %7, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i64 @getulong(i64 %126)
  store i64 %127, i64* %5, align 8
  %128 = load %struct.buf*, %struct.buf** %7, align 8
  %129 = getelementptr inbounds %struct.buf, %struct.buf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32, i32* @MSDOSFSFREE, align 4
  %134 = and i32 %133, 128
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %5, align 8
  %137 = and i64 %136, -129
  %138 = or i64 %135, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @putulong(i64 %132, i32 %139)
  br label %141

141:                                              ; preds = %62, %121, %107, %98
  %142 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %143 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %5, align 8
  %147 = and i64 %146, %145
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %150 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = xor i32 %151, -1
  %153 = sext i32 %152 to i64
  %154 = or i64 %148, %153
  %155 = load i64, i64* @CLUST_RSRVD, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %141
  %158 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %159 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %5, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %157, %141
  br label %16

165:                                              ; preds = %26
  %166 = load %struct.buf*, %struct.buf** %7, align 8
  %167 = icmp ne %struct.buf* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %170 = load %struct.buf*, %struct.buf** %7, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @updatefats(%struct.msdosfsmount* %169, %struct.buf* %170, i64 %171)
  br label %173

173:                                              ; preds = %168, %165
  %174 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %175 = call i32 @MSDOSFS_UNLOCK_MP(%struct.msdosfsmount* %174)
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %173, %56
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @MSDOSFS_LOCK_MP(%struct.msdosfsmount*) #1

declare dso_local i64 @FATOFS(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @updatefats(%struct.msdosfsmount*, %struct.buf*, i64) #1

declare dso_local i32 @bread(i32, i64, i64, i32, %struct.buf**) #1

declare dso_local i32 @MSDOSFS_UNLOCK_MP(%struct.msdosfsmount*) #1

declare dso_local i32 @usemap_free(%struct.msdosfsmount*, i64) #1

declare dso_local i64 @getushort(i64) #1

declare dso_local i32 @putushort(i64, i32) #1

declare dso_local i64 @getulong(i64) #1

declare dso_local i32 @putulong(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
