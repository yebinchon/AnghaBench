; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fatentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fatentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32, i32, i32 }
%struct.buf = type { i32 }

@CLUST_FIRST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@FAT_GET = common dso_local global i32 0, align 4
@CLUST_RSRVD = common dso_local global i32 0, align 4
@FAT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fatentry(i32 %0, %struct.msdosfsmount* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buf*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.msdosfsmount* %1, %struct.msdosfsmount** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @CLUST_FIRST, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %25 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %188

30:                                               ; preds = %22
  %31 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @FATOFS(%struct.msdosfsmount* %31, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @fatblock(%struct.msdosfsmount* %34, i32 %35, i32* %14, i32* %16, i32* %15)
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %38 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @NOCRED, align 4
  %43 = call i32 @bread(i32 %39, i32 %40, i32 %41, i32 %42, %struct.buf** %18)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %188

48:                                               ; preds = %30
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FAT_GET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %48
  %54 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %55 = call i64 @FAT32(%struct.msdosfsmount* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.buf*, %struct.buf** %18, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @getulong(i32 %62)
  store i32 %63, i32* %13, align 4
  br label %71

64:                                               ; preds = %53
  %65 = load %struct.buf*, %struct.buf** %18, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @getushort(i32 %69)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %73 = call i32 @FAT12(%struct.msdosfsmount* %72)
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 1
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %83 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %89 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, -1
  %92 = or i32 %87, %91
  %93 = load i32, i32* @CLUST_RSRVD, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %97 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %95, %81
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %48
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @FAT_SET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %181

110:                                              ; preds = %105
  %111 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %112 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %174 [
    i32 130, label %114
    i32 129, label %146
    i32 128, label %154
  ]

114:                                              ; preds = %110
  %115 = load %struct.buf*, %struct.buf** %18, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @getushort(i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 15
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %11, align 4
  %128 = shl i32 %127, 4
  %129 = load i32, i32* %13, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %13, align 4
  br label %138

131:                                              ; preds = %114
  %132 = load i32, i32* %13, align 4
  %133 = and i32 %132, 61440
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, 4095
  %136 = load i32, i32* %13, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %131, %124
  %139 = load %struct.buf*, %struct.buf** %18, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @putushort(i32 %143, i32 %144)
  br label %174

146:                                              ; preds = %110
  %147 = load %struct.buf*, %struct.buf** %18, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @putushort(i32 %151, i32 %152)
  br label %174

154:                                              ; preds = %110
  %155 = load %struct.buf*, %struct.buf** %18, align 8
  %156 = getelementptr inbounds %struct.buf, %struct.buf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %157, %158
  %160 = call i32 @getulong(i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = and i32 %161, -129
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 128
  %165 = load i32, i32* %13, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load %struct.buf*, %struct.buf** %18, align 8
  %168 = getelementptr inbounds %struct.buf, %struct.buf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @putulong(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %110, %154, %146, %138
  %175 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %176 = load %struct.buf*, %struct.buf** %18, align 8
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @updatefats(%struct.msdosfsmount* %175, %struct.buf* %176, i32 %177)
  store %struct.buf* null, %struct.buf** %18, align 8
  %179 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %180 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %179, i32 0, i32 2
  store i32 1, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %105
  %182 = load %struct.buf*, %struct.buf** %18, align 8
  %183 = icmp ne %struct.buf* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.buf*, %struct.buf** %18, align 8
  %186 = call i32 @brelse(%struct.buf* %185)
  br label %187

187:                                              ; preds = %184, %181
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %46, %28
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @FATOFS(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @getulong(i32) #1

declare dso_local i32 @getushort(i32) #1

declare dso_local i32 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i32 @putushort(i32, i32) #1

declare dso_local i32 @putulong(i32, i32) #1

declare dso_local i32 @updatefats(%struct.msdosfsmount*, %struct.buf*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
