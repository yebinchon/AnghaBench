; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_accf.c_accept_filt_generic_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_accf.c_accept_filt_generic_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accept_filter = type { i32 }

@M_ACCF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@unloadable = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_filt_generic_mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.accept_filter*, align 8
  %8 = alloca %struct.accept_filter*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.accept_filter*
  store %struct.accept_filter* %11, %struct.accept_filter** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %34 [
    i32 130, label %13
    i32 128, label %22
    i32 129, label %33
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @M_ACCF, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.accept_filter* @malloc(i32 4, i32 %14, i32 %15)
  store %struct.accept_filter* %16, %struct.accept_filter** %7, align 8
  %17 = load %struct.accept_filter*, %struct.accept_filter** %8, align 8
  %18 = load %struct.accept_filter*, %struct.accept_filter** %7, align 8
  %19 = call i32 @bcopy(%struct.accept_filter* %17, %struct.accept_filter* %18, i32 4)
  %20 = load %struct.accept_filter*, %struct.accept_filter** %7, align 8
  %21 = call i32 @accept_filt_add(%struct.accept_filter* %20)
  store i32 %21, i32* %9, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* @unloadable, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.accept_filter*, %struct.accept_filter** %8, align 8
  %27 = getelementptr inbounds %struct.accept_filter, %struct.accept_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @accept_filt_del(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %36

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %33, %32, %13
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local %struct.accept_filter* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.accept_filter*, %struct.accept_filter*, i32) #1

declare dso_local i32 @accept_filt_add(%struct.accept_filter*) #1

declare dso_local i32 @accept_filt_del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
