; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_fullfeature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_fullfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"flag=%d\00", align 1
@ISC_FFPHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32)* @i_fullfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_fullfeature(%struct.cdev* %0, i32 %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cdev*, %struct.cdev** %3, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @sdebug(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %36 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %28
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @ISC_FFPHASE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @ISC_FFPHASE, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = call i32 @ic_init(%struct.TYPE_4__* %26)
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @ISC_FFPHASE, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i32 @ism_restart(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %2, %28, %20, %13
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @sdebug(i32, i8*, i32) #1

declare dso_local i32 @ic_init(%struct.TYPE_4__*) #1

declare dso_local i32 @ism_restart(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
