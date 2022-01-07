; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatchain.c"
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
  br label %169

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %161, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %166

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
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load %struct.buf*, %struct.buf** %17, align 8
  %54 = call i32 @brelse(%struct.buf* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %169

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %160, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %161

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %16, align 4
  %72 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %73 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %155 [
    i32 130, label %75
    i32 129, label %116
    i32 128, label %126
  ]

75:                                               ; preds = %70
  %76 = load %struct.buf*, %struct.buf** %17, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @getushort(i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 61440
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = and i32 %88, 4095
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %99

92:                                               ; preds = %75
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, 15
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = shl i32 %95, 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.buf*, %struct.buf** %17, align 8
  %101 = getelementptr inbounds %struct.buf, %struct.buf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @putushort(i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %112, %99
  br label %155

116:                                              ; preds = %70
  %117 = load %struct.buf*, %struct.buf** %17, align 8
  %118 = getelementptr inbounds %struct.buf, %struct.buf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @putushort(i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %12, align 4
  br label %155

126:                                              ; preds = %70
  %127 = load %struct.buf*, %struct.buf** %17, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @getulong(i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %134 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %15, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %141 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %139, %142
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load %struct.buf*, %struct.buf** %17, align 8
  %147 = getelementptr inbounds %struct.buf, %struct.buf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @putulong(i32 %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %70, %126, %116, %115
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %161

160:                                              ; preds = %155
  br label %57

161:                                              ; preds = %159, %57
  %162 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %163 = load %struct.buf*, %struct.buf** %17, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @updatefats(%struct.msdosfsmount* %162, %struct.buf* %163, i32 %164)
  br label %33

166:                                              ; preds = %33
  %167 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %168 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %167, i32 0, i32 2
  store i32 1, i32* %168, align 4
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %166, %52, %30
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @FATOFS(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

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
