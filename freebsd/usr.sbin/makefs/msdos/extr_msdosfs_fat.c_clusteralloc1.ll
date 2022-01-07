; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_clusteralloc1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_clusteralloc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"clusteralloc(): find %lu clusters\0A\00", align 1
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
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @MSDOSFS_DPRINTF(i8* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @chainlength(%struct.msdosfsmount* %29, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @chainalloc(%struct.msdosfsmount* %36, i32 %37, i32 %38, i32 %39, i32* %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %215

43:                                               ; preds = %28
  br label %45

44:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %47 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %113, %108, %45
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %53 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %121

56:                                               ; preds = %50
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @N_INUSEBITS, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %61 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @N_INUSEBITS, align 4
  %69 = srem i32 %67, %68
  %70 = shl i32 1, %69
  %71 = sub i32 %70, 1
  %72 = load i32, i32* %21, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* @FULL_RUN, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %56
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @N_INUSEBITS, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @FULL_RUN, align 4
  %83 = xor i32 %81, %82
  %84 = call i32 @ffs(i32 %83)
  %85 = add nsw i32 %80, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  %87 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @chainlength(%struct.msdosfsmount* %87, i32 %88, i32 %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %77
  %94 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @chainalloc(%struct.msdosfsmount* %94, i32 %95, i32 %96, i32 %97, i32* %98, i32* %99)
  store i32 %100, i32* %7, align 4
  br label %215

101:                                              ; preds = %77
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %18, align 4
  br label %50

113:                                              ; preds = %56
  %114 = load i32, i32* @N_INUSEBITS, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @N_INUSEBITS, align 4
  %117 = srem i32 %115, %116
  %118 = sub nsw i32 %114, %117
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %18, align 4
  br label %50

121:                                              ; preds = %50
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %183, %178, %121
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %191

126:                                              ; preds = %122
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @N_INUSEBITS, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %14, align 4
  %130 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %131 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @N_INUSEBITS, align 4
  %139 = srem i32 %137, %138
  %140 = shl i32 1, %139
  %141 = sub i32 %140, 1
  %142 = load i32, i32* %21, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %21, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* @FULL_RUN, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %126
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @N_INUSEBITS, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* @FULL_RUN, align 4
  %153 = xor i32 %151, %152
  %154 = call i32 @ffs(i32 %153)
  %155 = add nsw i32 %150, %154
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  %157 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @chainlength(%struct.msdosfsmount* %157, i32 %158, i32 %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %147
  %164 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32*, i32** %12, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @chainalloc(%struct.msdosfsmount* %164, i32 %165, i32 %166, i32 %167, i32* %168, i32* %169)
  store i32 %170, i32* %7, align 4
  br label %215

171:                                              ; preds = %147
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32, i32* %18, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %18, align 4
  br label %122

183:                                              ; preds = %126
  %184 = load i32, i32* @N_INUSEBITS, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @N_INUSEBITS, align 4
  %187 = srem i32 %185, %186
  %188 = sub nsw i32 %184, %187
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %18, align 4
  br label %122

191:                                              ; preds = %122
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @ENOSPC, align 4
  store i32 %195, i32* %7, align 4
  br label %215

196:                                              ; preds = %191
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32*, i32** %12, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @chainalloc(%struct.msdosfsmount* %200, i32 %201, i32 %202, i32 %203, i32* %204, i32* %205)
  store i32 %206, i32* %7, align 4
  br label %215

207:                                              ; preds = %196
  %208 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32*, i32** %12, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = call i32 @chainalloc(%struct.msdosfsmount* %208, i32 %209, i32 %210, i32 %211, i32* %212, i32* %213)
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %207, %199, %194, %163, %93, %35
  %216 = load i32, i32* %7, align 4
  ret i32 %216
}

declare dso_local i32 @MSDOSFS_DPRINTF(i8*) #1

declare dso_local i32 @chainlength(%struct.msdosfsmount*, i32, i32) #1

declare dso_local i32 @chainalloc(%struct.msdosfsmount*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
