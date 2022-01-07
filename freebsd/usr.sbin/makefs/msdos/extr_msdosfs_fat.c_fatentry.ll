; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_fatentry.c"
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
  br label %190

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
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load %struct.buf*, %struct.buf** %18, align 8
  %48 = call i32 @brelse(%struct.buf* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %190

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @FAT_GET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %50
  %56 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %57 = call i64 @FAT32(%struct.msdosfsmount* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.buf*, %struct.buf** %18, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @getulong(i32 %64)
  store i32 %65, i32* %13, align 4
  br label %73

66:                                               ; preds = %55
  %67 = load %struct.buf*, %struct.buf** %18, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @getushort(i32 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %75 = call i32 @FAT12(%struct.msdosfsmount* %74)
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 1
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  %82 = ashr i32 %81, 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %85 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %91 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, -1
  %94 = or i32 %89, %93
  %95 = load i32, i32* @CLUST_RSRVD, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %83
  %98 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %99 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %97, %83
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %50
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @FAT_SET, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %183

112:                                              ; preds = %107
  %113 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %114 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %176 [
    i32 130, label %116
    i32 129, label %148
    i32 128, label %156
  ]

116:                                              ; preds = %112
  %117 = load %struct.buf*, %struct.buf** %18, align 8
  %118 = getelementptr inbounds %struct.buf, %struct.buf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @getushort(i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %127, 15
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %11, align 4
  %130 = shl i32 %129, 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %140

133:                                              ; preds = %116
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, 61440
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, 4095
  %138 = load i32, i32* %13, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %133, %126
  %141 = load %struct.buf*, %struct.buf** %18, align 8
  %142 = getelementptr inbounds %struct.buf, %struct.buf* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @putushort(i32 %145, i32 %146)
  br label %176

148:                                              ; preds = %112
  %149 = load %struct.buf*, %struct.buf** %18, align 8
  %150 = getelementptr inbounds %struct.buf, %struct.buf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @putushort(i32 %153, i32 %154)
  br label %176

156:                                              ; preds = %112
  %157 = load %struct.buf*, %struct.buf** %18, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i32 @getulong(i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, -129
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %11, align 4
  %166 = and i32 %165, 128
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %13, align 4
  %169 = load %struct.buf*, %struct.buf** %18, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @putulong(i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %112, %156, %148, %140
  %177 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %178 = load %struct.buf*, %struct.buf** %18, align 8
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @updatefats(%struct.msdosfsmount* %177, %struct.buf* %178, i32 %179)
  store %struct.buf* null, %struct.buf** %18, align 8
  %181 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %182 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %181, i32 0, i32 2
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %107
  %184 = load %struct.buf*, %struct.buf** %18, align 8
  %185 = icmp ne %struct.buf* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.buf*, %struct.buf** %18, align 8
  %188 = call i32 @brelse(%struct.buf* %187)
  br label %189

189:                                              ; preds = %186, %183
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %189, %46, %28
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @FATOFS(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatblock(%struct.msdosfsmount*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @getulong(i32) #1

declare dso_local i32 @getushort(i32) #1

declare dso_local i32 @FAT12(%struct.msdosfsmount*) #1

declare dso_local i32 @putushort(i32, i32) #1

declare dso_local i32 @putulong(i32, i32) #1

declare dso_local i32 @updatefats(%struct.msdosfsmount*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
