; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_chkreplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec.c_ipsec_chkreplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { %struct.secreplay* }
%struct.secreplay = type { i32, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Null SA\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Null replay state\00", align 1
@IPSEC_BITMAP_LOC_MASK = common dso_local global i32 0, align 4
@IPSEC_REDUNDANT_BIT_SHIFTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_chkreplay(i32 %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca %struct.secreplay*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %10 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %11 = icmp ne %struct.secasvar* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @IPSEC_ASSERT(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %15 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %14, i32 0, i32 0
  %16 = load %struct.secreplay*, %struct.secreplay** %15, align 8
  %17 = icmp ne %struct.secreplay* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @IPSEC_ASSERT(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %21 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %20, i32 0, i32 0
  %22 = load %struct.secreplay*, %struct.secreplay** %21, align 8
  store %struct.secreplay* %22, %struct.secreplay** %6, align 8
  %23 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %24 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %30 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 3
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %83

36:                                               ; preds = %28
  %37 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %38 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %83

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %45 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %83

49:                                               ; preds = %42
  %50 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %51 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %83

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @IPSEC_BITMAP_LOC_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @IPSEC_REDUNDANT_BIT_SHIFTS, align 4
  %64 = ashr i32 %62, %63
  %65 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %66 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IPSEC_BITMAP_INDEX_MASK(i32 %67)
  %69 = and i32 %64, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.secreplay*, %struct.secreplay** %6, align 8
  %71 = getelementptr inbounds %struct.secreplay, %struct.secreplay* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %57, %48, %41, %35, %27
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @IPSEC_BITMAP_INDEX_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
