; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_spreserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_spreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strings = type { i32* }

@stringdope = common dso_local global %struct.strings* null, align 8
@NSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spreserve() #0 {
  %1 = alloca %struct.strings*, align 8
  %2 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %3 = getelementptr inbounds %struct.strings, %struct.strings* %2, i64 0
  store %struct.strings* %3, %struct.strings** %1, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.strings*, %struct.strings** %1, align 8
  %6 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %7 = load i64, i64* @NSPACE, align 8
  %8 = getelementptr inbounds %struct.strings, %struct.strings* %6, i64 %7
  %9 = icmp ult %struct.strings* %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load %struct.strings*, %struct.strings** %1, align 8
  %12 = getelementptr inbounds %struct.strings, %struct.strings* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  br label %13

13:                                               ; preds = %10
  %14 = load %struct.strings*, %struct.strings** %1, align 8
  %15 = getelementptr inbounds %struct.strings, %struct.strings* %14, i32 1
  store %struct.strings* %15, %struct.strings** %1, align 8
  br label %4

16:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
