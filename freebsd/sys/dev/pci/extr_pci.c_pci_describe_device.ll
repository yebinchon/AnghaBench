; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_describe_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_describe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_vendordata = common dso_local global i8* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @pci_describe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pci_describe_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %5, align 8
  %9 = load i8*, i8** @pci_vendordata, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %83

12:                                               ; preds = %1
  %13 = load i8*, i8** @pci_vendordata, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i8* @malloc(i32 80, i32 %14, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %83

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %30, %19
  %21 = call i64 @pci_describe_parse_line(i8** %8, i32* %3, i32* %4, i8** %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %83

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @pci_get_vendor(i32 %26)
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %31

30:                                               ; preds = %24
  br label %20

31:                                               ; preds = %29
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call i8* @malloc(i32 80, i32 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %83

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %54, %37
  %39 = call i64 @pci_describe_parse_line(i8** %8, i32* %3, i32* %4, i8** %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  br label %55

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  store i8 0, i8* %47, align 1
  br label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @pci_get_device(i32 %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %48
  br label %38

55:                                               ; preds = %53, %46, %41
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @pci_get_device(i32 %63)
  %65 = call i32 @snprintf(i8* %62, i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %68, %70
  %72 = add nsw i32 %71, 3
  %73 = load i32, i32* @M_DEVBUF, align 4
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = call i8* @malloc(i32 %72, i32 %73, i32 %74)
  store i8* %75, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %66
  br label %83

83:                                               ; preds = %82, %36, %23, %18, %11
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @M_DEVBUF, align 4
  %96 = call i32 @free(i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8*, i8** %5, align 8
  ret i8* %98
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @pci_describe_parse_line(i8**, i32*, i32*, i8**) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
