; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_diow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_diow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_emul_dsoftc* }
%struct.pci_emul_dsoftc = type { i32*, i32** }

@DIOSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"diow: iow too large, offset %ld size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"diow: iow unknown size %d\0A\00", align 1
@DMEMSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"diow: memw too large, offset %ld size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"diow: memw unknown size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"diow: unknown bar idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32, i32)* @pci_emul_diow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_emul_diow(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_emul_dsoftc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 0
  %19 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %18, align 8
  store %struct.pci_emul_dsoftc* %19, %struct.pci_emul_dsoftc** %16, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %7
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @DIOSZ, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %201

32:                                               ; preds = %22
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %39 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %72

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, 65535
  %50 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %51 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %71

56:                                               ; preds = %44
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %62 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %35
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %80 = call i64 @pci_msi_enabled(%struct.pci_devinst* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %86 = call i32 @pci_msi_maxmsgnum(%struct.pci_devinst* %85)
  %87 = srem i32 %84, %86
  %88 = call i32 @pci_generate_msi(%struct.pci_devinst* %83, i32 %87)
  br label %89

89:                                               ; preds = %82, %78, %75, %72
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 11259375
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %102, %92
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %96 = call i32 @pci_msi_maxmsgnum(%struct.pci_devinst* %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @pci_generate_msi(%struct.pci_devinst* %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %93

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %7
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %192

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @DMEMSZ, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  br label %201

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %131 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %129, i32* %139, align 4
  br label %191

140:                                              ; preds = %123
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %146 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %144, i32* %154, align 4
  br label %190

155:                                              ; preds = %140
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %161 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %159, i32* %169, align 4
  br label %189

170:                                              ; preds = %155
  %171 = load i32, i32* %13, align 4
  %172 = icmp eq i32 %171, 8
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %16, align 8
  %176 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %175, i32 0, i32 1
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %174, i32* %184, align 4
  br label %188

185:                                              ; preds = %170
  %186 = load i32, i32* %13, align 4
  %187 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %185, %173
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189, %143
  br label %191

191:                                              ; preds = %190, %128
  br label %192

192:                                              ; preds = %191, %110
  %193 = load i32, i32* %11, align 4
  %194 = icmp sgt i32 %193, 2
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %28, %119, %198, %195
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @pci_msi_enabled(%struct.pci_devinst*) #1

declare dso_local i32 @pci_generate_msi(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_msi_maxmsgnum(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
