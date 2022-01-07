; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpinittables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpinittables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lp_tables_lock = common dso_local global i32 0, align 4
@txmith = common dso_local global i32* null, align 8
@LPIPTBLSIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ctxmith = common dso_local global i32* null, align 8
@ctxmitl = common dso_local global i32* null, align 8
@ctrecvh = common dso_local global i32* null, align 8
@ctrecvl = common dso_local global i32* null, align 8
@txmitl = common dso_local global i32* null, align 8
@trecvh = common dso_local global i32* null, align 8
@trecvl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lpinittables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpinittables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mtx_lock(i32* @lp_tables_lock)
  %4 = load i32*, i32** @txmith, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @LPIPTBLSIZE, align 4
  %8 = mul nsw i32 4, %7
  %9 = load i32, i32* @M_DEVBUF, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = call i8* @malloc(i32 %8, i32 %9, i32 %10)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @txmith, align 8
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i32*, i32** @txmith, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @mtx_unlock(i32* @lp_tables_lock)
  store i32 1, i32* %1, align 4
  br label %126

18:                                               ; preds = %13
  %19 = load i32*, i32** @ctxmith, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @LPIPTBLSIZE, align 4
  %23 = mul nsw i32 4, %22
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call i8* @malloc(i32 %23, i32 %24, i32 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @ctxmith, align 8
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32*, i32** @ctxmith, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @mtx_unlock(i32* @lp_tables_lock)
  store i32 1, i32* %1, align 4
  br label %126

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @LPIPTBLSIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 240
  %41 = ashr i32 %40, 4
  %42 = load i32*, i32** @ctxmith, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %2, align 4
  %47 = and i32 %46, 15
  %48 = or i32 16, %47
  %49 = load i32*, i32** @ctxmitl, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 120
  %55 = shl i32 %54, 1
  %56 = load i32*, i32** @ctrecvh, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %2, align 4
  %61 = and i32 %60, 120
  %62 = ashr i32 %61, 3
  %63 = load i32*, i32** @ctrecvl, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %34

70:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %121, %70
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @LPIPTBLSIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  %77 = and i32 %76, 128
  %78 = ashr i32 %77, 3
  %79 = load i32, i32* %2, align 4
  %80 = and i32 %79, 112
  %81 = ashr i32 %80, 4
  %82 = or i32 %78, %81
  %83 = or i32 %82, 8
  %84 = load i32*, i32** @txmith, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %2, align 4
  %89 = and i32 %88, 8
  %90 = shl i32 %89, 1
  %91 = load i32, i32* %2, align 4
  %92 = and i32 %91, 7
  %93 = or i32 %90, %92
  %94 = load i32*, i32** @txmitl, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %2, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %99, 128
  %101 = load i32, i32* %2, align 4
  %102 = and i32 %101, 56
  %103 = shl i32 %102, 1
  %104 = or i32 %100, %103
  %105 = load i32*, i32** @trecvh, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %2, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %110, 128
  %112 = ashr i32 %111, 4
  %113 = load i32, i32* %2, align 4
  %114 = and i32 %113, 56
  %115 = ashr i32 %114, 3
  %116 = or i32 %112, %115
  %117 = load i32*, i32** @trecvl, align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %75
  %122 = load i32, i32* %2, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %71

124:                                              ; preds = %71
  %125 = call i32 @mtx_unlock(i32* @lp_tables_lock)
  store i32 0, i32* %1, align 4
  br label %126

126:                                              ; preds = %124, %31, %16
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
