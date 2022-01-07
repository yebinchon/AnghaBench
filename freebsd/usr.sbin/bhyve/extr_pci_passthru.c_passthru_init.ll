; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.passthru_softc* }
%struct.passthru_softc = type { %struct.pci_devinst* }

@PCIOCREAD = common dso_local global i32 0, align 4
@PCIOCWRITE = common dso_local global i32 0, align 4
@PCIOCGETBAR = common dso_local global i32 0, align 4
@IODEV_PIO = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@VM_MEM_F_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"passthru requires guest memory to be wired\00", align 1
@pcifd = common dso_local global i64 0, align 8
@_PATH_DEVPCI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@iofd = common dso_local global i64 0, align 8
@_PATH_DEVIO = common dso_local global i32 0, align 4
@memfd = common dso_local global i64 0, align 8
@_PATH_MEM = common dso_local global i32 0, align 4
@CAP_MMAP_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%d/%d/%d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid passthru options\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"PCI device at %d/%d/%d is not using the ppt(4) driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @passthru_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passthru_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.passthru_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca [1 x i32], align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %18 = load i32, i32* @PCIOCREAD, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @PCIOCWRITE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @PCIOCGETBAR, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %24 = load i32, i32* @IODEV_PIO, align 4
  store i32 %24, i32* %23, align 4
  store %struct.passthru_softc* null, %struct.passthru_softc** %13, align 8
  store i32 1, i32* %11, align 4
  %25 = load i32, i32* @CAP_IOCTL, align 4
  %26 = load i32, i32* @CAP_READ, align 4
  %27 = load i32, i32* @CAP_WRITE, align 4
  %28 = call i32 @cap_rights_init(i32* %14, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %30 = call i32 @vm_get_memflags(%struct.vmctx* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @VM_MEM_F_WIRED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %174

38:                                               ; preds = %3
  %39 = load i64, i64* @pcifd, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* @_PATH_DEVPCI, align 4
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = call i64 @open(i32 %42, i32 %43, i32 0)
  store i64 %44, i64* @pcifd, align 8
  %45 = load i64, i64* @pcifd, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @_PATH_DEVPCI, align 4
  %49 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %174

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %38
  %53 = load i64, i64* @pcifd, align 8
  %54 = call i32 @caph_rights_limit(i64 %53, i32* %14)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EX_OSERR, align 4
  %58 = call i32 @errx(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* @pcifd, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %63 = call i32 @nitems(i32* %62)
  %64 = call i32 @caph_ioctls_limit(i64 %60, i32* %61, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EX_OSERR, align 4
  %68 = call i32 @errx(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i64, i64* @iofd, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* @_PATH_DEVIO, align 4
  %74 = load i32, i32* @O_RDWR, align 4
  %75 = call i64 @open(i32 %73, i32 %74, i32 0)
  store i64 %75, i64* @iofd, align 8
  %76 = load i64, i64* @iofd, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @_PATH_DEVIO, align 4
  %80 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %174

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i64, i64* @iofd, align 8
  %85 = call i32 @caph_rights_limit(i64 %84, i32* %14)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EX_OSERR, align 4
  %89 = call i32 @errx(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i64, i64* @iofd, align 8
  %92 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %94 = call i32 @nitems(i32* %93)
  %95 = call i32 @caph_ioctls_limit(i64 %91, i32* %92, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EX_OSERR, align 4
  %99 = call i32 @errx(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i64, i64* @memfd, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* @_PATH_MEM, align 4
  %105 = load i32, i32* @O_RDWR, align 4
  %106 = call i64 @open(i32 %104, i32 %105, i32 0)
  store i64 %106, i64* @memfd, align 8
  %107 = load i64, i64* @memfd, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @_PATH_MEM, align 4
  %111 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %174

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %100
  %115 = load i32, i32* @CAP_IOCTL, align 4
  %116 = call i32 @cap_rights_clear(i32* %14, i32 %115)
  %117 = load i32, i32* @CAP_MMAP_RW, align 4
  %118 = call i32 @cap_rights_set(i32* %14, i32 %117)
  %119 = load i64, i64* @memfd, align 8
  %120 = call i32 @caph_rights_limit(i64 %119, i32* %14)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EX_OSERR, align 4
  %124 = call i32 @errx(i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i8*, i8** %7, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @sscanf(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  %131 = icmp ne i32 %130, 3
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %125
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %174

135:                                              ; preds = %128
  %136 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @vm_assign_pptdev(%struct.vmctx* %136, i32 %137, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %144, i32 %145)
  br label %161

147:                                              ; preds = %135
  %148 = call %struct.passthru_softc* @calloc(i32 1, i32 8)
  store %struct.passthru_softc* %148, %struct.passthru_softc** %13, align 8
  %149 = load %struct.passthru_softc*, %struct.passthru_softc** %13, align 8
  %150 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %151 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %150, i32 0, i32 0
  store %struct.passthru_softc* %149, %struct.passthru_softc** %151, align 8
  %152 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %153 = load %struct.passthru_softc*, %struct.passthru_softc** %13, align 8
  %154 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %153, i32 0, i32 0
  store %struct.pci_devinst* %152, %struct.pci_devinst** %154, align 8
  %155 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %156 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @cfginit(%struct.vmctx* %155, %struct.pci_devinst* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %147, %142
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load %struct.passthru_softc*, %struct.passthru_softc** %13, align 8
  %166 = call i32 @free(%struct.passthru_softc* %165)
  %167 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @vm_unassign_pptdev(%struct.vmctx* %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %164, %161
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %132, %109, %78, %47, %35
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #1

declare dso_local i32 @vm_get_memflags(%struct.vmctx*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @caph_rights_limit(i64, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @caph_ioctls_limit(i64, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i32 @cap_rights_set(i32*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @vm_assign_pptdev(%struct.vmctx*, i32, i32, i32) #1

declare dso_local %struct.passthru_softc* @calloc(i32, i32) #1

declare dso_local i32 @cfginit(%struct.vmctx*, %struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.passthru_softc*) #1

declare dso_local i32 @vm_unassign_pptdev(%struct.vmctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
