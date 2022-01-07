; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_checkoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_checkoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_option = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"nro_next %p expected %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"nro_reqtype %u expected %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"nro_status %u expected %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_option*, %struct.nmreq_option*)* @checkoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkoption(%struct.nmreq_option* %0, %struct.nmreq_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmreq_option*, align 8
  %5 = alloca %struct.nmreq_option*, align 8
  store %struct.nmreq_option* %0, %struct.nmreq_option** %4, align 8
  store %struct.nmreq_option* %1, %struct.nmreq_option** %5, align 8
  %6 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %7 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %10 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %15 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %19 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %21)
  store i32 -1, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %25 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %28 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %33 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %36 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %37)
  store i32 -1, i32* %3, align 4
  br label %56

39:                                               ; preds = %23
  %40 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %41 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %44 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.nmreq_option*, %struct.nmreq_option** %4, align 8
  %49 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.nmreq_option*, %struct.nmreq_option** %5, align 8
  %52 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %53)
  store i32 -1, i32* %3, align 4
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47, %31, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
