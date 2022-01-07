; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_freeclusterchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_freeclusterchain.c"
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
  br label %14

14:                                               ; preds = %162, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CLUST_FIRST, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %21 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ false, %14 ], [ %23, %18 ]
  br i1 %25, label %26, label %163

26:                                               ; preds = %24
  %27 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @FATOFS(%struct.msdosfsmount* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @fatblock(%struct.msdosfsmount* %30, i64 %31, i64* %8, i64* %10, i64* %9)
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %26
  %37 = load %struct.buf*, %struct.buf** %7, align 8
  %38 = icmp ne %struct.buf* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %41 = load %struct.buf*, %struct.buf** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @updatefats(%struct.msdosfsmount* %40, %struct.buf* %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %46 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @NOCRED, align 4
  %51 = call i32 @bread(i32 %47, i64 %48, i64 %49, i32 %50, %struct.buf** %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.buf*, %struct.buf** %7, align 8
  %56 = call i32 @brelse(%struct.buf* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %172

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %26
  %61 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @usemap_free(%struct.msdosfsmount* %61, i64 %62)
  %64 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %65 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %139 [
    i32 130, label %67
    i32 129, label %105
    i32 128, label %119
  ]

67:                                               ; preds = %60
  %68 = load %struct.buf*, %struct.buf** %7, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @getushort(i64 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %5, align 8
  %75 = and i64 %74, 1
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load i64, i64* %12, align 8
  %79 = ashr i64 %78, 4
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %12, align 8
  %81 = and i64 %80, 15
  store i64 %81, i64* %12, align 8
  %82 = load i32, i32* @MSDOSFSFREE, align 4
  %83 = shl i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %96

87:                                               ; preds = %67
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %12, align 8
  %90 = and i64 %89, 61440
  store i64 %90, i64* %12, align 8
  %91 = load i32, i32* @MSDOSFSFREE, align 4
  %92 = and i32 %91, 4095
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %12, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %87, %77
  %97 = load %struct.buf*, %struct.buf** %7, align 8
  %98 = getelementptr inbounds %struct.buf, %struct.buf* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @putushort(i64 %101, i32 %103)
  br label %139

105:                                              ; preds = %60
  %106 = load %struct.buf*, %struct.buf** %7, align 8
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i64 @getushort(i64 %110)
  store i64 %111, i64* %5, align 8
  %112 = load %struct.buf*, %struct.buf** %7, align 8
  %113 = getelementptr inbounds %struct.buf, %struct.buf* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @MSDOSFSFREE, align 4
  %118 = call i32 @putushort(i64 %116, i32 %117)
  br label %139

119:                                              ; preds = %60
  %120 = load %struct.buf*, %struct.buf** %7, align 8
  %121 = getelementptr inbounds %struct.buf, %struct.buf* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i64 @getulong(i64 %124)
  store i64 %125, i64* %5, align 8
  %126 = load %struct.buf*, %struct.buf** %7, align 8
  %127 = getelementptr inbounds %struct.buf, %struct.buf* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i32, i32* @MSDOSFSFREE, align 4
  %132 = and i32 %131, 128
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %5, align 8
  %135 = and i64 %134, -129
  %136 = or i64 %133, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @putulong(i64 %130, i32 %137)
  br label %139

139:                                              ; preds = %60, %119, %105, %96
  %140 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %141 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %5, align 8
  %145 = and i64 %144, %143
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %148 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = xor i32 %149, -1
  %151 = sext i32 %150 to i64
  %152 = or i64 %146, %151
  %153 = load i64, i64* @CLUST_RSRVD, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %139
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %157 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %5, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %5, align 8
  br label %162

162:                                              ; preds = %155, %139
  br label %14

163:                                              ; preds = %24
  %164 = load %struct.buf*, %struct.buf** %7, align 8
  %165 = icmp ne %struct.buf* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.msdosfsmount*, %struct.msdosfsmount** %4, align 8
  %168 = load %struct.buf*, %struct.buf** %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @updatefats(%struct.msdosfsmount* %167, %struct.buf* %168, i64 %169)
  br label %171

171:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %54
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @FATOFS(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @updatefats(%struct.msdosfsmount*, %struct.buf*, i64) #1

declare dso_local i32 @bread(i32, i64, i64, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

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
