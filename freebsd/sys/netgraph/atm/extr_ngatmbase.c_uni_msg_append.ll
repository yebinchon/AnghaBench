; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_msg_append(%struct.uni_msg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @uni_msg_ensure(%struct.uni_msg* %9, i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %18 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @bcopy(i8* %16, i64 %19, i64 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %24 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %22
  store i64 %26, i64* %24, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @uni_msg_ensure(%struct.uni_msg*, i64) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
