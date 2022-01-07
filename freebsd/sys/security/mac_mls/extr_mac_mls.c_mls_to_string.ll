; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mac_mls = type { i32, i32, i32, i32 }

@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_MLS_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, %struct.mac_mls*)* @mls_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_to_string(%struct.sbuf* %0, %struct.mac_mls* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mac_mls*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mac_mls* %1, %struct.mac_mls** %5, align 8
  %6 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %7 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %15 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %14, i32 0, i32 3
  %16 = call i32 @mls_element_to_string(%struct.sbuf* %13, i32* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %23 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAC_MLS_FLAG_RANGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %21
  %29 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %30 = call i32 @sbuf_putc(%struct.sbuf* %29, i8 signext 40)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %28
  %35 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %36 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %37 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %36, i32 0, i32 2
  %38 = call i32 @mls_element_to_string(%struct.sbuf* %35, i32* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %44 = call i32 @sbuf_putc(%struct.sbuf* %43, i8 signext 45)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %42
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %51 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %50, i32 0, i32 1
  %52 = call i32 @mls_element_to_string(%struct.sbuf* %49, i32* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %58 = call i32 @sbuf_putc(%struct.sbuf* %57, i8 signext 41)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %21
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %54, %46, %40, %32, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mls_element_to_string(%struct.sbuf*, i32*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
