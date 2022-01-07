; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_ipc.c_ipcperm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_ipc.c_ipcperm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i64 }
%struct.ipc_perm = type { i64, i64, i32, i32, i32 }

@IPC_M = common dso_local global i32 0, align 4
@IPC_R = common dso_local global i32 0, align 4
@IPC_W = common dso_local global i32 0, align 4
@PRIV_IPC_ADMIN = common dso_local global i32 0, align 4
@PRIV_IPC_READ = common dso_local global i32 0, align 4
@PRIV_IPC_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcperm(%struct.thread* %0, %struct.ipc_perm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ipc_perm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.ipc_perm* %1, %struct.ipc_perm** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.ucred*, %struct.ucred** %14, align 8
  store %struct.ucred* %15, %struct.ucred** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.ucred*, %struct.ucred** %8, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %20 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.ucred*, %struct.ucred** %8, align 8
  %25 = getelementptr inbounds %struct.ucred, %struct.ucred* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %28 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23, %3
  %32 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %33 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @IPC_M, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %65

38:                                               ; preds = %23
  %39 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %40 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ucred*, %struct.ucred** %8, align 8
  %43 = call i64 @groupmember(i32 %41, %struct.ucred* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %47 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ucred*, %struct.ucred** %8, align 8
  %50 = call i64 @groupmember(i32 %48, %struct.ucred* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45, %38
  %53 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %54 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %56, 3
  store i32 %57, i32* %10, align 4
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %60 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 6
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IPC_R, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @IPC_R, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @IPC_W, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @IPC_W, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %164

90:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @IPC_M, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @IPC_M, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = load i32, i32* @PRIV_IPC_ADMIN, align 4
  %103 = call i32 @priv_check(%struct.thread* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @IPC_M, align 4
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %95, %90
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @IPC_R, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @IPC_R, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %116
  %122 = load %struct.thread*, %struct.thread** %5, align 8
  %123 = load i32, i32* @PRIV_IPC_READ, align 4
  %124 = call i32 @priv_check(%struct.thread* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @IPC_R, align 4
  %129 = load i32, i32* %12, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %116, %111
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @IPC_W, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @IPC_W, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %137
  %143 = load %struct.thread*, %struct.thread** %5, align 8
  %144 = load i32, i32* @PRIV_IPC_WRITE, align 4
  %145 = call i32 @priv_check(%struct.thread* %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @IPC_W, align 4
  %150 = load i32, i32* %12, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %137, %132
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @EACCES, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %161, %89
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @groupmember(i32, %struct.ucred*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
