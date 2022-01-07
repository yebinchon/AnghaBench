; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_ignoreclean.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_ignoreclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignentry = type { %struct.ignentry* }

@ignores = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ignoreclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignoreclean() #0 {
  %1 = alloca %struct.ignentry*, align 8
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 @SLIST_EMPTY(i32* @ignores)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = call %struct.ignentry* @SLIST_FIRST(i32* @ignores)
  store %struct.ignentry* %7, %struct.ignentry** %1, align 8
  %8 = load i32, i32* @next, align 4
  %9 = call i32 @SLIST_REMOVE_HEAD(i32* @ignores, i32 %8)
  %10 = load %struct.ignentry*, %struct.ignentry** %1, align 8
  %11 = getelementptr inbounds %struct.ignentry, %struct.ignentry* %10, i32 0, i32 0
  %12 = load %struct.ignentry*, %struct.ignentry** %11, align 8
  %13 = call i32 @free(%struct.ignentry* %12)
  %14 = load %struct.ignentry*, %struct.ignentry** %1, align 8
  %15 = call i32 @free(%struct.ignentry* %14)
  br label %2

16:                                               ; preds = %2
  ret void
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.ignentry* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.ignentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
