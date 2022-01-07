; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_passthru_cfgwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.passthru_softc* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.passthru_softc = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"vm_setup_pptdev_msi\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"vm_setup_pptdev_msix\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_INTxDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* @passthru_cfgwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passthru_cfgwrite(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.passthru_softc*, align 8
  %18 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %20 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %19, i32 0, i32 2
  %21 = load %struct.passthru_softc*, %struct.passthru_softc** %20, align 8
  store %struct.passthru_softc* %21, %struct.passthru_softc** %17, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @bar_access(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %191

26:                                               ; preds = %6
  %27 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @msicap_access(%struct.passthru_softc* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  %32 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %33 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %34 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @msicap_cfgwrite(%struct.pci_devinst* %32, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %44 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %48 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %52 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %56 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %60 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %64 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vm_setup_pptdev_msi(%struct.vmctx* %41, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %31
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %31
  store i32 0, i32* %7, align 4
  br label %191

73:                                               ; preds = %26
  %74 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @msixcap_access(%struct.passthru_softc* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %73
  %79 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %80 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %81 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @msixcap_cfgwrite(%struct.pci_devinst* %79, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %89 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %78
  %94 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %95 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %151, %93
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %98
  %103 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %106 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %110 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %114 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %119 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %128 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %137 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @vm_setup_pptdev_msix(%struct.vmctx* %103, i32 %104, i32 %108, i32 %112, i32 %116, i32 %117, i32 %126, i32 %135, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %102
  %149 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %102
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %98

154:                                              ; preds = %98
  br label %155

155:                                              ; preds = %154, %78
  store i32 0, i32* %7, align 4
  br label %191

156:                                              ; preds = %73
  %157 = load %struct.passthru_softc*, %struct.passthru_softc** %17, align 8
  %158 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @write_config(%struct.TYPE_12__* %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @PCIR_COMMAND, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %156
  %167 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %168 = load i32, i32* @PCIR_COMMAND, align 4
  %169 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %167, i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %174 = load i32, i32* @PCIR_COMMAND, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %173, i32 %174, i32 %175)
  br label %186

177:                                              ; preds = %166
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %182 = load i32, i32* @PCIR_COMMAND, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %177
  br label %186

186:                                              ; preds = %185, %172
  %187 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @pci_emul_cmd_changed(%struct.pci_devinst* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %156
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %190, %155, %72, %25
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i64 @bar_access(i32) #1

declare dso_local i64 @msicap_access(%struct.passthru_softc*, i32) #1

declare dso_local i32 @msicap_cfgwrite(%struct.pci_devinst*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_setup_pptdev_msi(%struct.vmctx*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @msixcap_access(%struct.passthru_softc*, i32) #1

declare dso_local i32 @msixcap_cfgwrite(%struct.pci_devinst*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_setup_pptdev_msix(%struct.vmctx*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_config(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_cmd_changed(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
