; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fillinusemap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_fillinusemap.c"
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
  %12 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %13 = call i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount* %12)
  store %struct.buf* null, %struct.buf** %4, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %17 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @N_INUSEBITS, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* @N_INUSEBITS, align 8
  %22 = udiv i64 %20, %21
  %23 = icmp ult i64 %15, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load i32, i32* @FULL_RUN, align 4
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %27 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %36 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %140, %34
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %40 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ule i64 %38, %41
  br i1 %42, label %43, label %143

43:                                               ; preds = %37
  %44 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @FATOFS(%struct.msdosfsmount* %44, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %49 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = urem i64 %47, %50
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %43
  %55 = load %struct.buf*, %struct.buf** %4, align 8
  %56 = icmp ne %struct.buf* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.buf*, %struct.buf** %4, align 8
  %59 = call i32 @brelse(%struct.buf* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @fatblock(%struct.msdosfsmount* %61, i64 %62, i64* %5, i64* %7, i32* null)
  %64 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %65 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @NOCRED, align 4
  %70 = call i32 @bread(i32 %66, i64 %67, i64 %68, i32 %69, %struct.buf** %4)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %183

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %78 = call i64 @FAT32(%struct.msdosfsmount* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.buf*, %struct.buf** %4, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %83, %84
  %86 = call i64 @getulong(i64 %85)
  store i64 %86, i64* %10, align 8
  br label %94

87:                                               ; preds = %76
  %88 = load %struct.buf*, %struct.buf** %4, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %90, %91
  %93 = call i64 @getushort(i64 %92)
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %87, %80
  %95 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %96 = call i64 @FAT12(%struct.msdosfsmount* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i64, i64* %9, align 8
  %100 = and i64 %99, 1
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = lshr i64 %103, 4
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %102, %98, %94
  %106 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %107 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = and i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %105
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %116 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %117, 4294967040
  %119 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %120 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = or i64 %118, %123
  %125 = icmp ne i64 %114, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load %struct.buf*, %struct.buf** %4, align 8
  %128 = call i32 @brelse(%struct.buf* %127)
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %2, align 4
  br label %183

130:                                              ; preds = %113, %105
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @CLUST_FREE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @usemap_free(%struct.msdosfsmount* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %37

143:                                              ; preds = %37
  %144 = load %struct.buf*, %struct.buf** %4, align 8
  %145 = icmp ne %struct.buf* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.buf*, %struct.buf** %4, align 8
  %148 = call i32 @brelse(%struct.buf* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %151 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %9, align 8
  br label %154

154:                                              ; preds = %179, %149
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %157 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @N_INUSEBITS, align 8
  %160 = add i64 %158, %159
  %161 = load i64, i64* @N_INUSEBITS, align 8
  %162 = udiv i64 %160, %161
  %163 = icmp ult i64 %155, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %154
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @N_INUSEBITS, align 8
  %167 = urem i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = shl i32 1, %168
  %170 = load %struct.msdosfsmount*, %struct.msdosfsmount** %3, align 8
  %171 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @N_INUSEBITS, align 8
  %175 = udiv i64 %173, %174
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %169
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %164
  %180 = load i64, i64* %9, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %9, align 8
  br label %154

182:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %126, %73
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount*) #1

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
