; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_checkEarlyExit.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_checkEarlyExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tenthousandsCount = common dso_local global i32 0, align 4
@stop = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\0D%3d0000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @checkEarlyExit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkEarlyExit() #0 {
  %1 = load i32, i32* @tenthousandsCount, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @tenthousandsCount, align 4
  %3 = load i64, i64* @stop, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @writeTestsPerformed(i32 0)
  %7 = call i32 (...) @exitWithStatus()
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @tenthousandsCount, align 4
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @writeTestsPerformed(i32) #1

declare dso_local i32 @exitWithStatus(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
