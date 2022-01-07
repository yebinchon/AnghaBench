; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fillinusemap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fillinusemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32*, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.buf = type { i64 }

@N_INUSEBITS = common dso_local global i64 0, align 8
@FULL_RUN = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLUST_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fillinusemap(%struct.msdosfsmount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msdosfsmount*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %3, align 8
  store %struct.buf* null, %struct.buf** %4, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %15 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @N_INUSEBITS, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* @N_INUSEBITS, align 8
  %20 = udiv i64 %18, %19
  %21 = icmp ult i64 %13, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load i32, i32* @FULL_RUN, align 4
  %24 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %25 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %23, i32* %28, align 4
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %34 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %138, %32
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %38 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ule i64 %36, %39
  br i1 %40, label %41, label %141

41:                                               ; preds = %35
  %42 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @FATOFS(%struct.msdosfsmount* %42, i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %47 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = urem i64 %45, %48
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %41
  %53 = load %struct.buf*, %struct.buf** %4, align 8
  %54 = icmp ne %struct.buf* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.buf*, %struct.buf** %4, align 8
  %57 = call i32 @brelse(%struct.buf* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @fatblock(%struct.msdosfsmount* %59, i64 %60, i64* %5, i64* %7, i32* null)
  %62 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %63 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @NOCRED, align 4
  %68 = call i32 @bread(i32 %64, i64 %65, i64 %66, i32 %67, %struct.buf** %4)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %2, align 4
  br label %181

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %76 = call i64 @FAT32(%struct.msdosfsmount* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.buf*, %struct.buf** %4, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %81, %82
  %84 = call i64 @getulong(i64 %83)
  store i64 %84, i64* %10, align 8
  br label %92

85:                                               ; preds = %74
  %86 = load %struct.buf*, %struct.buf** %4, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %88, %89
  %91 = call i64 @getushort(i64 %90)
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %94 = call i64 @FAT12(%struct.msdosfsmount* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = and i64 %97, 1
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i64, i64* %10, align 8
  %102 = lshr i64 %101, 4
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %100, %96, %92
  %104 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %105 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %103
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %114 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = and i64 %115, 4294967040
  %117 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %118 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = or i64 %116, %121
  %123 = icmp ne i64 %112, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %111
  %125 = load %struct.buf*, %struct.buf** %4, align 8
  %126 = call i32 @brelse(%struct.buf* %125)
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %2, align 4
  br label %181

128:                                              ; preds = %111, %103
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @CLUST_FREE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @usemap_free(%struct.msdosfsmount* %133, i64 %134)
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %35

141:                                              ; preds = %35
  %142 = load %struct.buf*, %struct.buf** %4, align 8
  %143 = icmp ne %struct.buf* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.buf*, %struct.buf** %4, align 8
  %146 = call i32 @brelse(%struct.buf* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %149 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %177, %147
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %155 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @N_INUSEBITS, align 8
  %158 = add i64 %156, %157
  %159 = load i64, i64* @N_INUSEBITS, align 8
  %160 = udiv i64 %158, %159
  %161 = icmp ult i64 %153, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %152
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @N_INUSEBITS, align 8
  %165 = urem i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = shl i32 1, %166
  %168 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %169 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @N_INUSEBITS, align 8
  %173 = udiv i64 %171, %172
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %167
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %162
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %9, align 8
  br label %152

180:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %124, %71
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i64 @FATOFS(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @bread(i32, i64, i64, i32, %struct.buf**) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i64 @getulong(i64) #1

declare dso_local i64 @getushort(i64) #1

declare dso_local i64 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i32 @usemap_free(%struct.msdosfsmount*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
