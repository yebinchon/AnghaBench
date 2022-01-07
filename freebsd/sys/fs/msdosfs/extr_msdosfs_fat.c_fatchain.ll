; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fatchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fatchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32, i32, i32 }
%struct.buf = type { i32 }

@CLUST_FIRST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdosfsmount*, i32, i32, i32)* @fatchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatchain(%struct.msdosfsmount* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buf*, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CLUST_FIRST, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %27 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21, %4
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %5, align 4
  br label %167

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %159, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %164

36:                                               ; preds = %33
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @FATOFS(%struct.msdosfsmount* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @fatblock(%struct.msdosfsmount* %40, i32 %41, i32* %11, i32* %13, i32* %12)
  %43 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %44 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @NOCRED, align 4
  %49 = call i32 @bread(i32 %45, i32 %46, i32 %47, i32 %48, %struct.buf** %17)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %167

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %158, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %159

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %16, align 4
  %70 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %71 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %153 [
    i32 130, label %73
    i32 129, label %114
    i32 128, label %124
  ]

73:                                               ; preds = %68
  %74 = load %struct.buf*, %struct.buf** %17, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @getushort(i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %84, 61440
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, 4095
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  br label %97

90:                                               ; preds = %73
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 15
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = shl i32 %93, 4
  %95 = load i32, i32* %15, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.buf*, %struct.buf** %17, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @putushort(i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %97
  br label %153

114:                                              ; preds = %68
  %115 = load %struct.buf*, %struct.buf** %17, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @putushort(i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %12, align 4
  br label %153

124:                                              ; preds = %68
  %125 = load %struct.buf*, %struct.buf** %17, align 8
  %126 = getelementptr inbounds %struct.buf, %struct.buf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @getulong(i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %132 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %139 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %137, %140
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  %144 = load %struct.buf*, %struct.buf** %17, align 8
  %145 = getelementptr inbounds %struct.buf, %struct.buf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @putulong(i32 %148, i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %68, %124, %114, %113
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %159

158:                                              ; preds = %153
  br label %55

159:                                              ; preds = %157, %55
  %160 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %161 = load %struct.buf*, %struct.buf** %17, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @updatefats(%struct.msdosfsmount* %160, %struct.buf* %161, i32 %162)
  br label %33

164:                                              ; preds = %33
  %165 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %166 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %165, i32 0, i32 2
  store i32 1, i32* %166, align 4
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %164, %52, %30
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @FATOFS(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @getushort(i32) #1

declare dso_local i32 @putushort(i32, i32) #1

declare dso_local i32 @getulong(i32) #1

declare dso_local i32 @putulong(i32, i32) #1

declare dso_local i32 @updatefats(%struct.msdosfsmount*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
