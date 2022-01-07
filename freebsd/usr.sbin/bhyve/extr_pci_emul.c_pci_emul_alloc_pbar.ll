; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_alloc_pbar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_alloc_pbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PCI_BARMAX = common dso_local global i32 0, align 4
@pci_emul_iobase = common dso_local global i32 0, align 4
@PCI_EMUL_IOLIMIT = common dso_local global i32 0, align 4
@PCIM_BAR_IO_BASE = common dso_local global i32 0, align 4
@PCIM_BAR_IO_SPACE = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@pci_emul_membase64 = common dso_local global i32 0, align 4
@PCI_EMUL_MEMLIMIT64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_BASE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@pci_emul_membase32 = common dso_local global i32 0, align 4
@PCI_EMUL_MEMLIMIT32 = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pci_emul_alloc_base: invalid bar type %d\0A\00", align 1
@PCIBAR_MEMHI64 = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_alloc_pbar(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PCI_BARMAX, align 4
  %26 = icmp sle i32 %24, %25
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ false, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @flsl(i32 %37)
  %39 = shl i64 1, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 131
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 4, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 16, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %94 [
    i32 128, label %56
    i32 131, label %57
    i32 129, label %62
    i32 130, label %87
  ]

56:                                               ; preds = %54
  store i32* null, i32** %13, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %98

57:                                               ; preds = %54
  store i32* @pci_emul_iobase, i32** %13, align 8
  %58 = load i32, i32* @PCI_EMUL_IOLIMIT, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @PCIM_BAR_IO_BASE, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @PCIM_BAR_IO_SPACE, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  store i32 %61, i32* %20, align 4
  br label %98

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 33554432
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 4294967296
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32* %9, i32** %13, align 8
  br label %71

70:                                               ; preds = %65
  store i32* @pci_emul_membase64, i32** %13, align 8
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* @PCI_EMUL_MEMLIMIT64, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %75 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %17, align 4
  br label %85

79:                                               ; preds = %62
  store i32* @pci_emul_membase32, i32** %13, align 8
  %80 = load i32, i32* @PCI_EMUL_MEMLIMIT32, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %83 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  store i32 %86, i32* %20, align 4
  br label %98

87:                                               ; preds = %54
  store i32* @pci_emul_membase32, i32** %13, align 8
  %88 = load i32, i32* @PCI_EMUL_MEMLIMIT32, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %91 = load i32, i32* @PCIM_BAR_MEM_32, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  store i32 %93, i32* %20, align 4
  br label %98

94:                                               ; preds = %54
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = call i32 @assert(i32 0)
  br label %98

98:                                               ; preds = %94, %87, %85, %57, %56
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @pci_emul_alloc_resource(i32* %102, i32 %103, i32 %104, i32* %15)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %6, align 4
  br label %191

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %114 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %112, i32* %119, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %122 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %120, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %130 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store i32 %128, i32* %135, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %17, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %18, align 4
  %141 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @PCIR_BAR(i32 %142)
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %141, i32 %143, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 129
  br i1 %147, label %148, label %171

148:                                              ; preds = %111
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* @PCI_BARMAX, align 4
  %152 = icmp sle i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* @PCIBAR_MEMHI64, align 4
  %156 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %157 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 %155, i32* %163, align 4
  %164 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @PCIR_BAR(i32 %166)
  %168 = load i32, i32* %18, align 4
  %169 = ashr i32 %168, 32
  %170 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %164, i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %148, %111
  %172 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %173 = load i32, i32* @PCIR_COMMAND, align 4
  %174 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %172, i32 %173)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %20, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %182 = load i32, i32* @PCIR_COMMAND, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %20, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %181, i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %180, %171
  %188 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @register_bar(%struct.pci_devinst* %188, i32 %189)
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %187, %108
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @flsl(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pci_emul_alloc_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @pci_set_cfgdata32(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @register_bar(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
