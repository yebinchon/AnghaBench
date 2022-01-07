; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_unix.c_kern_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_unix.c_kern_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.vmspace* }
%struct.vmspace = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32 }

@RLIMIT_DATA = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@RLIMIT_VMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@old_mlock = common dso_local global i32 0, align 4
@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@RACCT_DATA = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@RACCT_VMEM = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@i386_read_exec = common dso_local global i64 0, align 8
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_break(%struct.thread* %0, i64* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i64* %1, i64** %4, align 8
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.vmspace*, %struct.vmspace** %19, align 8
  store %struct.vmspace* %20, %struct.vmspace** %5, align 8
  %21 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %22 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %21, i32 0, i32 2
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = load i32, i32* @RLIMIT_DATA, align 4
  %25 = call i64 @lim_cur(%struct.thread* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %28 = call i64 @lim_cur(%struct.thread* %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = load i32, i32* @RLIMIT_VMEM, align 4
  %31 = call i64 @lim_cur(%struct.thread* %29, i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @round_page(i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = call i32 @vm_map_lock(%struct.TYPE_13__* %35)
  %37 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %38 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @round_page(i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %43 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ctob(i32 %44)
  %46 = add nsw i64 %41, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %2
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %10, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %15, align 4
  br label %197

62:                                               ; preds = %56, %50
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = call i64 @vm_map_max(%struct.TYPE_13__* %64)
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %15, align 4
  br label %197

69:                                               ; preds = %62
  br label %77

70:                                               ; preds = %2
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %7, align 8
  br label %197

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %69
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %170

81:                                               ; preds = %77
  %82 = load i32, i32* @old_mlock, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAP_WIREFUTURE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pmap_wired_count(i32 %94)
  %96 = call i64 @ptoa(i32 %95)
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub nsw i64 %97, %98
  %100 = add nsw i64 %96, %99
  %101 = load i64, i64* %11, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %15, align 4
  br label %197

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %84, %81
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub nsw i64 %110, %111
  %113 = add nsw i64 %109, %112
  %114 = load i64, i64* %12, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %15, align 4
  br label %197

118:                                              ; preds = %106
  %119 = load i32, i32* @VM_PROT_RW, align 4
  store i32 %119, i32* %13, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @VM_PROT_ALL, align 4
  %125 = call i32 @vm_map_insert(%struct.TYPE_13__* %120, i32* null, i32 0, i64 %121, i64 %122, i32 %123, i32 %124, i32 0)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @KERN_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %118
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MAP_WIREFUTURE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %129
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %141 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @vm_map_wire_locked(%struct.TYPE_13__* %137, i64 %138, i64 %139, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @KERN_SUCCESS, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @vm_map_delete(%struct.TYPE_13__* %148, i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %147, %136
  br label %153

153:                                              ; preds = %152, %129, %118
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @KERN_SUCCESS, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @ENOMEM, align 4
  store i32 %158, i32* %15, align 4
  br label %197

159:                                              ; preds = %153
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = sub nsw i64 %160, %161
  %163 = call i64 @btoc(i64 %162)
  %164 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %165 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 8
  br label %196

170:                                              ; preds = %77
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = load i64, i64* %7, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @vm_map_delete(%struct.TYPE_13__* %175, i64 %176, i64 %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @KERN_SUCCESS, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @ENOMEM, align 4
  store i32 %183, i32* %15, align 4
  br label %197

184:                                              ; preds = %174
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* %7, align 8
  %187 = sub nsw i64 %185, %186
  %188 = call i64 @btoc(i64 %187)
  %189 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %190 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  br label %195

195:                                              ; preds = %184, %170
  br label %196

196:                                              ; preds = %195, %159
  br label %197

197:                                              ; preds = %196, %182, %157, %116, %103, %74, %67, %60
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = call i32 @vm_map_unlock(%struct.TYPE_13__* %198)
  %200 = load i32, i32* %15, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i64, i64* %7, align 8
  %204 = load i64*, i64** %4, align 8
  store i64 %203, i64* %204, align 8
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i32, i32* %15, align 4
  ret i32 %206
}

declare dso_local i64 @lim_cur(%struct.thread*, i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_13__*) #1

declare dso_local i64 @ctob(i32) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_13__*) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_wired_count(i32) #1

declare dso_local i32 @vm_map_insert(%struct.TYPE_13__*, i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_wire_locked(%struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i32 @vm_map_delete(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i64 @btoc(i64) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
