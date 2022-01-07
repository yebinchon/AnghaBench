; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_clusteralloc1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_clusteralloc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32, i32* }

@N_INUSEBITS = common dso_local global i32 0, align 4
@FULL_RUN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdosfsmount*, i32, i32, i32, i32*, i32*)* @clusteralloc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusteralloc1(%struct.msdosfsmount* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %20, align 4
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %23 = call i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %6
  %27 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @chainlength(%struct.msdosfsmount* %27, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @chainalloc(%struct.msdosfsmount* %34, i32 %35, i32 %36, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %7, align 4
  br label %213

41:                                               ; preds = %26
  br label %43

42:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %45 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %111, %106, %43
  %49 = load i32, i32* %18, align 4
  %50 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %51 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %119

54:                                               ; preds = %48
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @N_INUSEBITS, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %59 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @N_INUSEBITS, align 4
  %67 = srem i32 %65, %66
  %68 = shl i32 1, %67
  %69 = sub i32 %68, 1
  %70 = load i32, i32* %21, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* @FULL_RUN, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %54
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @N_INUSEBITS, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* @FULL_RUN, align 4
  %81 = xor i32 %79, %80
  %82 = call i32 @ffs(i32 %81)
  %83 = add nsw i32 %78, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  %85 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @chainlength(%struct.msdosfsmount* %85, i32 %86, i32 %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @chainalloc(%struct.msdosfsmount* %92, i32 %93, i32 %94, i32 %95, i32* %96, i32* %97)
  store i32 %98, i32* %7, align 4
  br label %213

99:                                               ; preds = %75
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %18, align 4
  br label %48

111:                                              ; preds = %54
  %112 = load i32, i32* @N_INUSEBITS, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @N_INUSEBITS, align 4
  %115 = srem i32 %113, %114
  %116 = sub nsw i32 %112, %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %18, align 4
  br label %48

119:                                              ; preds = %48
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %181, %176, %119
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %189

124:                                              ; preds = %120
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* @N_INUSEBITS, align 4
  %127 = sdiv i32 %125, %126
  store i32 %127, i32* %14, align 4
  %128 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %129 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @N_INUSEBITS, align 4
  %137 = srem i32 %135, %136
  %138 = shl i32 1, %137
  %139 = sub i32 %138, 1
  %140 = load i32, i32* %21, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* @FULL_RUN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %181

145:                                              ; preds = %124
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @N_INUSEBITS, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* @FULL_RUN, align 4
  %151 = xor i32 %149, %150
  %152 = call i32 @ffs(i32 %151)
  %153 = add nsw i32 %148, %152
  %154 = sub nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  %155 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @chainlength(%struct.msdosfsmount* %155, i32 %156, i32 %157)
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %145
  %162 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @chainalloc(%struct.msdosfsmount* %162, i32 %163, i32 %164, i32 %165, i32* %166, i32* %167)
  store i32 %168, i32* %7, align 4
  br label %213

169:                                              ; preds = %145
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %17, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %18, align 4
  br label %120

181:                                              ; preds = %124
  %182 = load i32, i32* @N_INUSEBITS, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* @N_INUSEBITS, align 4
  %185 = srem i32 %183, %184
  %186 = sub nsw i32 %182, %185
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %18, align 4
  br label %120

189:                                              ; preds = %120
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @ENOSPC, align 4
  store i32 %193, i32* %7, align 4
  br label %213

194:                                              ; preds = %189
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @chainalloc(%struct.msdosfsmount* %198, i32 %199, i32 %200, i32 %201, i32* %202, i32* %203)
  store i32 %204, i32* %7, align 4
  br label %213

205:                                              ; preds = %194
  %206 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = call i32 @chainalloc(%struct.msdosfsmount* %206, i32 %207, i32 %208, i32 %209, i32* %210, i32* %211)
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %205, %197, %192, %161, %91, %33
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount*) #1

declare dso_local i32 @chainlength(%struct.msdosfsmount*, i32, i32) #1

declare dso_local i32 @chainalloc(%struct.msdosfsmount*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
