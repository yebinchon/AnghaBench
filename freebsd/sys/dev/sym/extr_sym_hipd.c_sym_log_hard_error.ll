; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_log_hard_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_log_hard_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64 }

@nc_dsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scripta\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"scriptb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x) @ (%s %x:%08x).\0A\00", align 1
@nc_sdid = common dso_local global i32 0, align 4
@nc_socl = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@nc_sbdl = common dso_local global i32 0, align 4
@nc_sxfer = common dso_local global i32 0, align 4
@nc_scntl3 = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: script cmd = %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s: regdump:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: PCI STATUS = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @sym_log_hard_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_log_hard_error(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @nc_dsp, align 4
  %15 = call i32 @INL(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = icmp sle i32 %22, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %11, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %76

44:                                               ; preds = %21, %3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = icmp sle i32 %51, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %11, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %75

73:                                               ; preds = %50, %44
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %75

75:                                               ; preds = %73, %60
  br label %76

76:                                               ; preds = %75, %31
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = call i8* @sym_name(%struct.TYPE_4__* %77)
  %79 = load i32, i32* @nc_sdid, align 4
  %80 = call i64 @INB(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = and i32 %81, 15
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @nc_socl, align 4
  %86 = call i64 @INB(i32 %85)
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @nc_sbcl, align 4
  %89 = call i64 @INB(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @nc_sbdl, align 4
  %92 = call i64 @INB(i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @nc_sxfer, align 4
  %95 = call i64 @INB(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @nc_scntl3, align 4
  %98 = call i64 @INB(i32 %97)
  %99 = trunc i64 %98 to i32
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @nc_dbc, align 4
  %103 = call i32 @INL(i32 %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %78, i32 %82, i32 %83, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i8* %100, i32 %101, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %76
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = call i8* @sym_name(%struct.TYPE_4__* %113)
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @scr_to_cpu(i32 %119)
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %114, i32 %120)
  br label %122

122:                                              ; preds = %112, %108, %76
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = call i8* @sym_name(%struct.TYPE_4__* %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %134, %122
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 24
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = call i64 @INB_OFF(i32 %130)
  %132 = trunc i64 %131 to i32
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %126

137:                                              ; preds = %126
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @MDPE, align 4
  %141 = load i32, i32* @BF, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %137
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PCIR_STATUS, align 4
  %150 = call i32 @pci_read_config(i32 %148, i32 %149, i32 2)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 63744
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %145
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @PCIR_STATUS, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @pci_write_config(i32 %157, i32 %158, i32 %159, i32 2)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = call i8* @sym_name(%struct.TYPE_4__* %161)
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, 63744
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %162, i32 %164)
  br label %166

166:                                              ; preds = %154, %145
  br label %167

167:                                              ; preds = %166, %137
  ret void
}

declare dso_local i32 @INL(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_4__*) #1

declare dso_local i64 @INB(i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i64 @INB_OFF(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
