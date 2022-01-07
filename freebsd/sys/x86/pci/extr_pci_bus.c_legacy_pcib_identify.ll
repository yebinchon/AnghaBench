; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_bus.c_legacy_pcib_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/pci/extr_pci_bus.c_legacy_pcib_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCIR_DEVVENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"legacy_pcib_identify: no bridge found, adding pcib0 anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @legacy_pcib_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_pcib_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = call i64 (...) @pci_cfgregopen()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %200

26:                                               ; preds = %2
  %27 = call i32 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @devclass_get_device(i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %200

34:                                               ; preds = %29, %26
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %184, %34
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %175, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PCI_SLOTMAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %178

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PCIR_HDRTYPE, align 4
  %45 = call i32 @legacy_pcib_read_config(i32 0, i32 %41, i32 %42, i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PCIM_HDRTYPE, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %175

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PCIM_MFDEV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 255
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @PCI_FUNCMAX, align 4
  store i32 %64, i32* %10, align 4
  br label %66

65:                                               ; preds = %60, %52
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %63
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %171, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %174

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %76 = call i32 @legacy_pcib_read_config(i32 0, i32 %72, i32 %73, i32 %74, i32 %75, i32 4)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %171

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @PCIR_CLASS, align 4
  %85 = call i32 @legacy_pcib_read_config(i32 0, i32 %81, i32 %82, i32 %83, i32 %84, i32 1)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PCIR_SUBCLASS, align 4
  %90 = call i32 @legacy_pcib_read_config(i32 0, i32 %86, i32 %87, i32 %88, i32 %89, i32 1)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i8* @legacy_pcib_is_host_bridge(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32* %18)
  store i8* %97, i8** %19, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %80
  br label %171

101:                                              ; preds = %80
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @device_get_children(i32 %102, i32** %20, i32* %21)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %101
  store i32 0, i32* %22, align 4
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i8*, i8** %19, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %139

115:                                              ; preds = %113
  %116 = load i32*, i32** %20, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @device_get_name(i32 %120)
  %122 = call i64 @strcmp(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %136

125:                                              ; preds = %115
  %126 = load i32*, i32** %20, align 8
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @legacy_get_pcibus(i32 %130)
  %132 = load i32, i32* %18, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i8* null, i8** %19, align 8
  br label %135

135:                                              ; preds = %134, %125
  br label %136

136:                                              ; preds = %135, %124
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %106

139:                                              ; preds = %113
  %140 = load i32*, i32** %20, align 8
  %141 = load i32, i32* @M_TEMP, align 4
  %142 = call i32 @free(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %101
  %144 = load i8*, i8** %19, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %171

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @BUS_ADD_CHILD(i32 %148, i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i8*, i8** %19, align 8
  %153 = call i32 @device_set_desc(i32 %151, i8* %152)
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %18, align 4
  %156 = call i32 @legacy_set_pcibus(i32 %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @legacy_set_pcislot(i32 %157, i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @legacy_set_pcifunc(i32 %160, i32 %161)
  store i32 1, i32* %9, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, 304447622
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  store i32 1, i32* %11, align 4
  br label %166

166:                                              ; preds = %165, %147
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, -2067496826
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %166
  br label %171

171:                                              ; preds = %170, %146, %100, %79
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %67

174:                                              ; preds = %67
  br label %175

175:                                              ; preds = %174, %51
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %36

178:                                              ; preds = %36
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %35

187:                                              ; preds = %181, %178
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* @bootverbose, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %190
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @BUS_ADD_CHILD(i32 %196, i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @legacy_set_pcibus(i32 %198, i32 0)
  br label %200

200:                                              ; preds = %25, %33, %195, %187
  ret void
}

declare dso_local i64 @pci_cfgregopen(...) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i64 @devclass_get_device(i32, i32) #1

declare dso_local i32 @legacy_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @legacy_pcib_is_host_bridge(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @legacy_get_pcibus(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @legacy_set_pcibus(i32, i32) #1

declare dso_local i32 @legacy_set_pcislot(i32, i32) #1

declare dso_local i32 @legacy_set_pcifunc(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
