; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_dbregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_set_dbregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.dbreg = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PCB_DBREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dbregs(%struct.thread* %0, %struct.dbreg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.dbreg*, align 8
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.dbreg* %1, %struct.dbreg** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = icmp eq %struct.thread* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %12 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @load_dr0(i64 %15)
  %17 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %18 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @load_dr1(i64 %21)
  %23 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %24 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @load_dr2(i64 %27)
  %29 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %30 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @load_dr3(i64 %33)
  %35 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %36 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 6
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @load_dr6(i64 %39)
  %41 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %42 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 7
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @load_dr7(i64 %45)
  br label %204

47:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %53 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 7
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @DBREG_DR7_ACCESS(i64 %56, i32 %57)
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %205

62:                                               ; preds = %51
  %63 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %64 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 7
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @DBREG_DR7_LEN(i64 %67, i32 %68)
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %3, align 4
  br label %205

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.thread*, %struct.thread** %4, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 0
  %80 = load %struct.pcb*, %struct.pcb** %79, align 8
  store %struct.pcb* %80, %struct.pcb** %6, align 8
  %81 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %82 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 7
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @DBREG_DR7_ENABLED(i64 %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %90 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %3, align 4
  br label %205

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %101 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 7
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @DBREG_DR7_ENABLED(i64 %104, i32 1)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %109 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %3, align 4
  br label %205

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %99
  %119 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %120 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 7
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @DBREG_DR7_ENABLED(i64 %123, i32 2)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %118
  %127 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %128 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %3, align 4
  br label %205

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %118
  %138 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %139 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 7
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @DBREG_DR7_ENABLED(i64 %142, i32 3)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %137
  %146 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %147 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @EINVAL, align 4
  store i32 %154, i32* %3, align 4
  br label %205

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %137
  %157 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %158 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.pcb*, %struct.pcb** %6, align 8
  %163 = getelementptr inbounds %struct.pcb, %struct.pcb* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %165 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.pcb*, %struct.pcb** %6, align 8
  %170 = getelementptr inbounds %struct.pcb, %struct.pcb* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %172 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.pcb*, %struct.pcb** %6, align 8
  %177 = getelementptr inbounds %struct.pcb, %struct.pcb* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  %178 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %179 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 3
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pcb*, %struct.pcb** %6, align 8
  %184 = getelementptr inbounds %struct.pcb, %struct.pcb* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  %185 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %186 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 6
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.pcb*, %struct.pcb** %6, align 8
  %191 = getelementptr inbounds %struct.pcb, %struct.pcb* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  %192 = load %struct.dbreg*, %struct.dbreg** %5, align 8
  %193 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 7
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.pcb*, %struct.pcb** %6, align 8
  %198 = getelementptr inbounds %struct.pcb, %struct.pcb* %197, i32 0, i32 5
  store i64 %196, i64* %198, align 8
  %199 = load i32, i32* @PCB_DBREGS, align 4
  %200 = load %struct.pcb*, %struct.pcb** %6, align 8
  %201 = getelementptr inbounds %struct.pcb, %struct.pcb* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %156, %10
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %153, %134, %115, %96, %71, %60
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @load_dr0(i64) #1

declare dso_local i32 @load_dr1(i64) #1

declare dso_local i32 @load_dr2(i64) #1

declare dso_local i32 @load_dr3(i64) #1

declare dso_local i32 @load_dr6(i64) #1

declare dso_local i32 @load_dr7(i64) #1

declare dso_local i32 @DBREG_DR7_ACCESS(i64, i32) #1

declare dso_local i32 @DBREG_DR7_LEN(i64, i32) #1

declare dso_local i64 @DBREG_DR7_ENABLED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
