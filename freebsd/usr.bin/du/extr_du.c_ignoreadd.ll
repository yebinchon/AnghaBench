; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_ignoreadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_ignoreadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignentry = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"cannot allocate memory\00", align 1
@ignores = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ignoreadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignoreadd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ignentry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.ignentry* @calloc(i32 1, i32 8)
  store %struct.ignentry* %4, %struct.ignentry** %3, align 8
  %5 = load %struct.ignentry*, %struct.ignentry** %3, align 8
  %6 = icmp eq %struct.ignentry* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @strdup(i8* %10)
  %12 = load %struct.ignentry*, %struct.ignentry** %3, align 8
  %13 = getelementptr inbounds %struct.ignentry, %struct.ignentry* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.ignentry*, %struct.ignentry** %3, align 8
  %15 = getelementptr inbounds %struct.ignentry, %struct.ignentry* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %9
  %21 = load %struct.ignentry*, %struct.ignentry** %3, align 8
  %22 = load i32, i32* @next, align 4
  %23 = call i32 @SLIST_INSERT_HEAD(i32* @ignores, %struct.ignentry* %21, i32 %22)
  ret void
}

declare dso_local %struct.ignentry* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.ignentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
