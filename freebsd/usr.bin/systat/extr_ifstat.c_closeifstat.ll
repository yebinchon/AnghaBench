; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_closeifstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_closeifstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_stat = type { i32 }

@curlist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closeifstat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.if_stat*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.if_stat* null, %struct.if_stat** %3, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = call i32 @SLIST_EMPTY(i32* @curlist)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = call %struct.if_stat* @SLIST_FIRST(i32* @curlist)
  store %struct.if_stat* %9, %struct.if_stat** %3, align 8
  %10 = load i32, i32* @link, align 4
  %11 = call i32 @SLIST_REMOVE_HEAD(i32* @curlist, i32 %10)
  %12 = load %struct.if_stat*, %struct.if_stat** %3, align 8
  %13 = call i32 @free(%struct.if_stat* %12)
  br label %4

14:                                               ; preds = %4
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @wclear(i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @wrefresh(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @delwin(i32* %22)
  br label %24

24:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.if_stat* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.if_stat*) #1

declare dso_local i32 @wclear(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @delwin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
