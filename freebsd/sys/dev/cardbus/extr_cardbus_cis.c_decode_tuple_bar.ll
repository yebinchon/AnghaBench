; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_decode_tuple_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }
%struct.cardbus_devinfo = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"CIS BAR length not 6 (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPL_BAR_REG_AS = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@TPL_BAR_REG_ASI_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid BAR type 0 in CIS\0A\00", align 1
@TPL_BAR_REG_PREFETCHABLE = common dso_local global i32 0, align 4
@TPL_BAR_REG_BELOW1MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32, i32*, %struct.tuple_callbacks*, i8*)* @decode_tuple_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tuple_bar(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.tuple_callbacks* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.tuple_callbacks*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.cardbus_devinfo*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.tuple_callbacks* %7, %struct.tuple_callbacks** %18, align 8
  store i8* %8, i8** %19, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.cardbus_devinfo* @device_get_ivars(i32 %24)
  store %struct.cardbus_devinfo* %25, %struct.cardbus_devinfo** %20, align 8
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 6
  br i1 %27, label %28, label %33

28:                                               ; preds = %9
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %10, align 4
  br label %98

33:                                               ; preds = %9
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %22, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32toh(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* @TPL_BAR_REG_AS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %45, i32* %21, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %47, i32* %21, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* @TPL_BAR_REG_ASI_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %23, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %10, align 4
  br label %98

58:                                               ; preds = %48
  %59 = load i32, i32* %23, align 4
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %98

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %23, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @PCIR_BAR(i32 %65)
  store i32 %66, i32* %23, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %63
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* @TPL_BAR_REG_PREFETCHABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @PCI_RID2BAR(i32 %76)
  %78 = shl i32 1, %77
  %79 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %20, align 8
  %80 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* @TPL_BAR_REG_BELOW1MB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* %23, align 4
  %90 = call i32 @PCI_RID2BAR(i32 %89)
  %91 = shl i32 1, %90
  %92 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %20, align 8
  %93 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %83
  br label %97

97:                                               ; preds = %96, %63
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %61, %54, %28
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local %struct.cardbus_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @PCI_RID2BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
