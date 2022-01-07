; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_child = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" queue %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" at consumer %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ntb_transport_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_child*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ntb_transport_child* @device_get_ivars(i32 %7)
  store %struct.ntb_transport_child* %8, %struct.ntb_transport_child** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bus_print_child_header(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %22 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %27 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sub nsw i32 %32, 1
  %34 = call i64 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %25, %16
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @bus_print_child_domain(i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @bus_print_child_footer(i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.ntb_transport_child* @device_get_ivars(i32) #1

declare dso_local i32 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, i32) #1

declare dso_local i64 @bus_print_child_domain(i32, i32) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
