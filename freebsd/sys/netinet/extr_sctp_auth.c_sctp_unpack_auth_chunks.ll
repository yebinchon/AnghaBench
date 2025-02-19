; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_unpack_auth_chunks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_unpack_auth_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_unpack_auth_chunks(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 32
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @sctp_auth_add_chunk(i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %9, align 4
  br label %68

34:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @sctp_auth_add_chunk(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %52, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %39

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %35

67:                                               ; preds = %35
  store i32 32, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @sctp_auth_add_chunk(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
