; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_ucount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_ucount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64 }

@USER_PROCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ucount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucount() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utmpx*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @setutxent()
  br label %4

4:                                                ; preds = %16, %0
  %5 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %5, %struct.utmpx** %2, align 8
  %6 = icmp ne %struct.utmpx* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %9 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USER_PROCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %7
  br label %4

17:                                               ; preds = %4
  %18 = call i32 (...) @endutxent()
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
