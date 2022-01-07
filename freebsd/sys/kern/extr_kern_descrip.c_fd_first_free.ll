; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fd_first_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fd_first_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32* }

@NDENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filedesc*, i32, i32)* @fd_first_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_first_free(%struct.filedesc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filedesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.filedesc* %0, %struct.filedesc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %13 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @NDSLOT(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NDENTRIES, align 4
  %25 = srem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = load i32, i32* @NDENTRIES, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NDENTRIES, align 4
  %31 = srem i32 %29, %30
  %32 = sub nsw i32 %28, %31
  %33 = ashr i32 -1, %32
  %34 = xor i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %27
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NDENTRIES, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ffsl(i32 %49)
  %51 = add nsw i32 %48, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %90

53:                                               ; preds = %27
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %20
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @NDSLOTS(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %85, %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, -1
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @NDENTRIES, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @ffsl(i32 %80)
  %82 = add nsw i32 %74, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %59

88:                                               ; preds = %59
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %71, %45, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @NDSLOT(i32) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @NDSLOTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
