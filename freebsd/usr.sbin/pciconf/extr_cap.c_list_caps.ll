; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_list_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_list_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }

@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@PCIR_CAP_PTR_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"list_caps: bad header type\00", align 1
@PCICAP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"    cap %02x[%02x] = \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PCICAP_NEXTPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_caps(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %11 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %10, i32 0, i32 1
  %12 = load i32, i32* @PCIR_STATUS, align 4
  %13 = call i8* @read_config(i32 %9, i32* %11, i32 %12, i32 2)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %149

20:                                               ; preds = %2
  %21 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %22 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIM_HDRTYPE, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %30 [
    i32 142, label %26
    i32 144, label %26
    i32 143, label %28
  ]

26:                                               ; preds = %20, %20
  %27 = load i32, i32* @PCIR_CAP_PTR, align 4
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @PCIR_CAP_PTR_2, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %20
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28, %26
  store i32 0, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %35 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %34, i32 0, i32 1
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @read_config(i32 %33, i32* %35, i32 %36, i32 1)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %132, %32
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 255
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %142

47:                                               ; preds = %45
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %50 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %49, i32 0, i32 1
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PCICAP_ID, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i8* @read_config(i32 %48, i32* %50, i32 %53, i32 1)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %130 [
    i32 132, label %60
    i32 141, label %65
    i32 128, label %70
    i32 136, label %75
    i32 133, label %80
    i32 137, label %85
    i32 129, label %90
    i32 140, label %95
    i32 130, label %100
    i32 138, label %105
    i32 135, label %110
    i32 131, label %115
    i32 134, label %120
    i32 139, label %125
  ]

60:                                               ; preds = %47
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @cap_power(i32 %61, %struct.pci_conf* %62, i32 %63)
  br label %132

65:                                               ; preds = %47
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @cap_agp(i32 %66, %struct.pci_conf* %67, i32 %68)
  br label %132

70:                                               ; preds = %47
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @cap_vpd(i32 %71, %struct.pci_conf* %72, i32 %73)
  br label %132

75:                                               ; preds = %47
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @cap_msi(i32 %76, %struct.pci_conf* %77, i32 %78)
  br label %132

80:                                               ; preds = %47
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @cap_pcix(i32 %81, %struct.pci_conf* %82, i32 %83)
  br label %132

85:                                               ; preds = %47
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @cap_ht(i32 %86, %struct.pci_conf* %87, i32 %88)
  br label %132

90:                                               ; preds = %47
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @cap_vendor(i32 %91, %struct.pci_conf* %92, i32 %93)
  br label %132

95:                                               ; preds = %47
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @cap_debug(i32 %96, %struct.pci_conf* %97, i32 %98)
  br label %132

100:                                              ; preds = %47
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @cap_subvendor(i32 %101, %struct.pci_conf* %102, i32 %103)
  br label %132

105:                                              ; preds = %47
  store i32 1, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @cap_express(i32 %106, %struct.pci_conf* %107, i32 %108)
  br label %132

110:                                              ; preds = %47
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @cap_msix(i32 %111, %struct.pci_conf* %112, i32 %113)
  br label %132

115:                                              ; preds = %47
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @cap_sata(i32 %116, %struct.pci_conf* %117, i32 %118)
  br label %132

120:                                              ; preds = %47
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @cap_pciaf(i32 %121, %struct.pci_conf* %122, i32 %123)
  br label %132

125:                                              ; preds = %47
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @cap_ea(i32 %126, %struct.pci_conf* %127, i32 %128)
  br label %132

130:                                              ; preds = %47
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %136 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %135, i32 0, i32 1
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @PCICAP_NEXTPTR, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i8* @read_config(i32 %134, i32* %136, i32 %139, i32 1)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %7, align 4
  br label %39

142:                                              ; preds = %45
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %148 = call i32 @list_ecaps(i32 %146, %struct.pci_conf* %147)
  br label %149

149:                                              ; preds = %19, %145, %142
  ret void
}

declare dso_local i8* @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cap_power(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_agp(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_vpd(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_msi(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_pcix(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_ht(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_vendor(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_debug(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_subvendor(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_express(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_msix(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_sata(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_pciaf(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @cap_ea(i32, %struct.pci_conf*, i32) #1

declare dso_local i32 @list_ecaps(i32, %struct.pci_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
