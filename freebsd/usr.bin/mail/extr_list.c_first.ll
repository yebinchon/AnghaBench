; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@msgCount = common dso_local global i64 0, align 8
@MDELETED = common dso_local global i32 0, align 4
@dot = common dso_local global %struct.message* null, align 8
@message = common dso_local global %struct.message* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @msgCount, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

10:                                               ; preds = %2
  %11 = load i32, i32* @MDELETED, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MDELETED, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.message*, %struct.message** @dot, align 8
  store %struct.message* %17, %struct.message** %6, align 8
  br label %18

18:                                               ; preds = %42, %10
  %19 = load %struct.message*, %struct.message** %6, align 8
  %20 = load %struct.message*, %struct.message** @message, align 8
  %21 = load i64, i64* @msgCount, align 8
  %22 = getelementptr inbounds %struct.message, %struct.message* %20, i64 %21
  %23 = icmp ult %struct.message* %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.message*, %struct.message** %6, align 8
  %26 = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.message*, %struct.message** %6, align 8
  %34 = load %struct.message*, %struct.message** @message, align 8
  %35 = ptrtoint %struct.message* %33 to i64
  %36 = ptrtoint %struct.message* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = add nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.message*, %struct.message** %6, align 8
  %44 = getelementptr inbounds %struct.message, %struct.message* %43, i32 1
  store %struct.message* %44, %struct.message** %6, align 8
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.message*, %struct.message** @dot, align 8
  %47 = getelementptr inbounds %struct.message, %struct.message* %46, i64 -1
  store %struct.message* %47, %struct.message** %6, align 8
  br label %48

48:                                               ; preds = %71, %45
  %49 = load %struct.message*, %struct.message** %6, align 8
  %50 = load %struct.message*, %struct.message** @message, align 8
  %51 = getelementptr inbounds %struct.message, %struct.message* %50, i64 0
  %52 = icmp uge %struct.message* %49, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.message*, %struct.message** %6, align 8
  %55 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.message*, %struct.message** %6, align 8
  %63 = load %struct.message*, %struct.message** @message, align 8
  %64 = ptrtoint %struct.message* %62 to i64
  %65 = ptrtoint %struct.message* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = add nsw i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.message*, %struct.message** %6, align 8
  %73 = getelementptr inbounds %struct.message, %struct.message* %72, i32 -1
  store %struct.message* %73, %struct.message** %6, align 8
  br label %48

74:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %61, %32, %9
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
