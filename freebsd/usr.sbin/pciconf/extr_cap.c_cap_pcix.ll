; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_pcix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_pcix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }

@PCIXR_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"PCI-X \00", align 1
@PCIXM_STATUS_64BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"64-bit \00", align 1
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bridge \00", align 1
@PCIXM_STATUS_133CAP = common dso_local global i32 0, align 4
@PCIXM_STATUS_266CAP = common dso_local global i32 0, align 4
@PCIXM_STATUS_533CAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"supports\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" 133MHz\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s 266MHz\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s 533MHz\00", align 1
@PCIXM_STATUS_MAX_READ = common dso_local global i32 0, align 4
@PCIXM_STATUS_MAX_SPLITS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"%s %d burst read, %d split transaction%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64)* @cap_pcix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_pcix(i32 %0, %struct.pci_conf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %13 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PCIXR_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @read_config(i32 %11, i32* %13, i64 %16, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCIXM_STATUS_64BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %27 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCIM_HDRTYPE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %36 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCIM_HDRTYPE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PCIXM_STATUS_133CAP, align 4
  %44 = load i32, i32* @PCIXM_STATUS_266CAP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PCIXM_STATUS_533CAP, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41, %34
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41
  store i32 0, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @PCIXM_STATUS_133CAP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PCIXM_STATUS_266CAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PCIXM_STATUS_533CAP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %83 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PCIM_HDRTYPE, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %121

89:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PCIXM_STATUS_MAX_READ, align 4
  %92 = and i32 %90, %91
  switch i32 %92, label %97 [
    i32 136, label %93
    i32 139, label %94
    i32 138, label %95
    i32 137, label %96
  ]

93:                                               ; preds = %89
  store i32 512, i32* %10, align 4
  br label %97

94:                                               ; preds = %89
  store i32 1024, i32* %10, align 4
  br label %97

95:                                               ; preds = %89
  store i32 2048, i32* %10, align 4
  br label %97

96:                                               ; preds = %89
  store i32 4096, i32* %10, align 4
  br label %97

97:                                               ; preds = %89, %96, %95, %94, %93
  store i32 0, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @PCIXM_STATUS_MAX_SPLITS, align 4
  %100 = and i32 %98, %99
  switch i32 %100, label %109 [
    i32 135, label %101
    i32 132, label %102
    i32 131, label %103
    i32 129, label %104
    i32 128, label %105
    i32 134, label %106
    i32 133, label %107
    i32 130, label %108
  ]

101:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %109

102:                                              ; preds = %97
  store i32 2, i32* %9, align 4
  br label %109

103:                                              ; preds = %97
  store i32 3, i32* %9, align 4
  br label %109

104:                                              ; preds = %97
  store i32 4, i32* %9, align 4
  br label %109

105:                                              ; preds = %97
  store i32 8, i32* %9, align 4
  br label %109

106:                                              ; preds = %97
  store i32 12, i32* %9, align 4
  br label %109

107:                                              ; preds = %97
  store i32 16, i32* %9, align 4
  br label %109

108:                                              ; preds = %97
  store i32 32, i32* %9, align 4
  br label %109

109:                                              ; preds = %97, %108, %107, %106, %105, %104, %103, %102, %101
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 1
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %113, i32 %114, i32 %115, i8* %119)
  br label %121

121:                                              ; preds = %109, %88
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
