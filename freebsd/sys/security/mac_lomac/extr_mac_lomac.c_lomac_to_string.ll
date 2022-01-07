; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mac_lomac = type { i32, i32, i32, i32, i32 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, %struct.mac_lomac*)* @lomac_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_to_string(%struct.sbuf* %0, %struct.mac_lomac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mac_lomac*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mac_lomac* %1, %struct.mac_lomac** %5, align 8
  %6 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %7 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %14 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %15 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %14, i32 0, i32 4
  %16 = call i32 @lomac_element_to_string(%struct.sbuf* %13, i32* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %23 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %30 = call i32 @sbuf_putc(%struct.sbuf* %29, i8 signext 91)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %28
  %35 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %36 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %37 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %36, i32 0, i32 3
  %38 = call i32 @lomac_element_to_string(%struct.sbuf* %35, i32* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %34
  %43 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %44 = call i32 @sbuf_putc(%struct.sbuf* %43, i8 signext 93)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %92

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %51 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %49
  %57 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %58 = call i32 @sbuf_putc(%struct.sbuf* %57, i8 signext 40)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %92

62:                                               ; preds = %56
  %63 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %64 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %65 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %64, i32 0, i32 2
  %66 = call i32 @lomac_element_to_string(%struct.sbuf* %63, i32* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %92

70:                                               ; preds = %62
  %71 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %72 = call i32 @sbuf_putc(%struct.sbuf* %71, i8 signext 45)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %92

76:                                               ; preds = %70
  %77 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %78 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %79 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %78, i32 0, i32 1
  %80 = call i32 @lomac_element_to_string(%struct.sbuf* %77, i32* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %92

84:                                               ; preds = %76
  %85 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %86 = call i32 @sbuf_putc(%struct.sbuf* %85, i8 signext 41)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %49
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %82, %74, %68, %60, %46, %40, %32, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @lomac_element_to_string(%struct.sbuf*, i32*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
