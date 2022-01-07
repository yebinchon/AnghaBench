; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"read ber elements, root %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_read_elements(%struct.ber* %0, %struct.ber_element* %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca %struct.ber_element*, align 8
  store %struct.ber* %0, %struct.ber** %4, align 8
  store %struct.ber_element* %1, %struct.ber_element** %5, align 8
  %7 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  store %struct.ber_element* %7, %struct.ber_element** %6, align 8
  %8 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %9 = icmp eq %struct.ber_element* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = call %struct.ber_element* @ber_get_element(i32 0)
  store %struct.ber_element* %11, %struct.ber_element** %6, align 8
  %12 = icmp eq %struct.ber_element* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %31

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.ber_element* %16)
  %18 = load %struct.ber*, %struct.ber** %4, align 8
  %19 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %20 = call i32 @ber_read_element(%struct.ber* %18, %struct.ber_element* %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %24 = icmp eq %struct.ber_element* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %27 = call i32 @ber_free_elements(%struct.ber_element* %26)
  br label %28

28:                                               ; preds = %25, %22
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %31

29:                                               ; preds = %15
  %30 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  store %struct.ber_element* %30, %struct.ber_element** %3, align 8
  br label %31

31:                                               ; preds = %29, %28, %13
  %32 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %32
}

declare dso_local %struct.ber_element* @ber_get_element(i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.ber_element*) #1

declare dso_local i32 @ber_read_element(%struct.ber*, %struct.ber_element*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
