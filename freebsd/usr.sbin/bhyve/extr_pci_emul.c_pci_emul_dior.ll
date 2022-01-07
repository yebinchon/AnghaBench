; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_dior.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_dior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_emul_dsoftc* }
%struct.pci_emul_dsoftc = type { i32*, i32** }

@DIOSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"dior: ior too large, offset %ld size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"dior: ior unknown size %d\0A\00", align 1
@DMEMSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"dior: memr too large, offset %ld size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"dior: unknown bar idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* @pci_emul_dior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_dior(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_emul_dsoftc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 0
  %19 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %18, align 8
  store %struct.pci_emul_dsoftc* %19, %struct.pci_emul_dsoftc** %14, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %6
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
  store i32 0, i32* %7, align 4
  br label %167

32:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %37 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  br label %70

43:                                               ; preds = %32
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %48 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  br label %69

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %59 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %57
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %35
  br label %71

71:                                               ; preds = %70, %6
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %156

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @DMEMSZ, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  store i32 0, i32* %7, align 4
  br label %167

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %94 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %15, align 4
  br label %155

104:                                              ; preds = %87
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %109 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %15, align 4
  br label %154

119:                                              ; preds = %104
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %124 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %15, align 4
  br label %153

134:                                              ; preds = %119
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 8
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.pci_emul_dsoftc*, %struct.pci_emul_dsoftc** %14, align 8
  %139 = getelementptr inbounds %struct.pci_emul_dsoftc, %struct.pci_emul_dsoftc* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  br label %152

149:                                              ; preds = %134
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %137
  br label %153

153:                                              ; preds = %152, %122
  br label %154

154:                                              ; preds = %153, %107
  br label %155

155:                                              ; preds = %154, %92
  br label %156

156:                                              ; preds = %155, %74
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %157, 2
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %11, align 4
  %164 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  store i32 0, i32* %7, align 4
  br label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %162, %83, %28
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
