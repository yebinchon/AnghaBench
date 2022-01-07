; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_insert_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_insert_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32, i32 }
%struct.ar_obj = type { i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"try to insert a null obj\00", align 1
@AR_B = common dso_local global i32 0, align 4
@objs = common dso_local global i32 0, align 4
@AR_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, %struct.ar_obj*, %struct.ar_obj*)* @insert_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_obj(%struct.bsdar* %0, %struct.ar_obj* %1, %struct.ar_obj* %2) #0 {
  %4 = alloca %struct.bsdar*, align 8
  %5 = alloca %struct.ar_obj*, align 8
  %6 = alloca %struct.ar_obj*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %4, align 8
  store %struct.ar_obj* %1, %struct.ar_obj** %5, align 8
  store %struct.ar_obj* %2, %struct.ar_obj** %6, align 8
  %7 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %8 = icmp eq %struct.ar_obj* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %11 = load i32, i32* @EX_SOFTWARE, align 4
  %12 = call i32 @bsdar_errc(%struct.bsdar* %10, i32 %11, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %15 = icmp eq %struct.ar_obj* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %18 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %19 = icmp eq %struct.ar_obj* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13
  br label %48

21:                                               ; preds = %16
  %22 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %23 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AR_B, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %30 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %31 = load i32, i32* @objs, align 4
  %32 = call i32 @TAILQ_INSERT_BEFORE(%struct.ar_obj* %29, %struct.ar_obj* %30, i32 %31)
  br label %54

33:                                               ; preds = %21
  %34 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %35 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR_A, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %42 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %41, i32 0, i32 1
  %43 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %44 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %45 = load i32, i32* @objs, align 4
  %46 = call i32 @TAILQ_INSERT_AFTER(i32* %42, %struct.ar_obj* %43, %struct.ar_obj* %44, i32 %45)
  br label %54

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %50 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %49, i32 0, i32 1
  %51 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %52 = load i32, i32* @objs, align 4
  %53 = call i32 @TAILQ_INSERT_TAIL(i32* %50, %struct.ar_obj* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %40, %28
  ret void
}

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.ar_obj*, %struct.ar_obj*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.ar_obj*, %struct.ar_obj*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ar_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
