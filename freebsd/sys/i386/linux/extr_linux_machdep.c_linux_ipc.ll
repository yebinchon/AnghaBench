; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_ipc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_ipc_args = type { i32, i32, i32, i32, i32, i32 }
%struct.linux_semop_args = type { i32, i8*, i32 }
%struct.linux_semget_args = type { i32, i32, i32 }
%struct.linux_semctl_args = type { %struct.l_ipc_kludge, i32, i32, i32 }
%struct.l_ipc_kludge = type { i32, i32 }
%struct.linux_msgsnd_args = type { i32, i32, i8*, i32 }
%struct.linux_msgrcv_args = type { i32, i8*, i32, i32, i32 }
%struct.linux_msgget_args = type { i32, i32 }
%struct.linux_msgctl_args = type { i8*, i32, i32 }
%struct.linux_shmat_args = type { i32, i8*, i32 }
%struct.linux_shmdt_args = type { i8* }
%struct.linux_shmget_args = type { i32, i32, i32 }
%struct.linux_shmctl_args = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_ipc(%struct.thread* %0, %struct.linux_ipc_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ipc_args*, align 8
  %6 = alloca %struct.linux_semop_args, align 8
  %7 = alloca %struct.linux_semget_args, align 4
  %8 = alloca %struct.linux_semctl_args, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.linux_msgsnd_args, align 8
  %11 = alloca %struct.linux_msgrcv_args, align 8
  %12 = alloca %struct.l_ipc_kludge, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.linux_msgget_args, align 4
  %15 = alloca %struct.linux_msgctl_args, align 8
  %16 = alloca %struct.linux_shmat_args, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.linux_shmdt_args, align 8
  %20 = alloca %struct.linux_shmget_args, align 4
  %21 = alloca %struct.linux_shmctl_args, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ipc_args* %1, %struct.linux_ipc_args** %5, align 8
  %22 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65535
  switch i32 %25, label %261 [
    i32 132, label %26
    i32 133, label %42
    i32 134, label %57
    i32 135, label %83
    i32 136, label %103
    i32 137, label %159
    i32 138, label %170
    i32 131, label %186
    i32 129, label %222
    i32 128, label %230
    i32 130, label %245
  ]

26:                                               ; preds = %2
  %27 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %32 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @PTRIN(i32 %33)
  %35 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %6, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.linux_semop_args, %struct.linux_semop_args* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = call i32 @linux_semop(%struct.thread* %40, %struct.linux_semop_args* %6)
  store i32 %41, i32* %3, align 4
  br label %264

42:                                               ; preds = %2
  %43 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %44 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %7, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %48 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %7, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %52 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.linux_semget_args, %struct.linux_semget_args* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = call i32 @linux_semget(%struct.thread* %55, %struct.linux_semget_args* %7)
  store i32 %56, i32* %3, align 4
  br label %264

57:                                               ; preds = %2
  %58 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %59 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %8, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %63 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %67 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %71 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @PTRIN(i32 %72)
  %74 = getelementptr inbounds %struct.linux_semctl_args, %struct.linux_semctl_args* %8, i32 0, i32 0
  %75 = call i32 @copyin(i8* %73, %struct.l_ipc_kludge* %74, i32 8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %264

80:                                               ; preds = %57
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = call i32 @linux_semctl(%struct.thread* %81, %struct.linux_semctl_args* %8)
  store i32 %82, i32* %3, align 4
  br label %264

83:                                               ; preds = %2
  %84 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %85 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.linux_msgsnd_args, %struct.linux_msgsnd_args* %10, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %89 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @PTRIN(i32 %90)
  %92 = getelementptr inbounds %struct.linux_msgsnd_args, %struct.linux_msgsnd_args* %10, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  %93 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %94 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.linux_msgsnd_args, %struct.linux_msgsnd_args* %10, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %98 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.linux_msgsnd_args, %struct.linux_msgsnd_args* %10, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.thread*, %struct.thread** %4, align 8
  %102 = call i32 @linux_msgsnd(%struct.thread* %101, %struct.linux_msgsnd_args* %10)
  store i32 %102, i32* %3, align 4
  br label %264

103:                                              ; preds = %2
  %104 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %105 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 4
  store i32 %106, i32* %107, align 8
  %108 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %109 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %113 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 2
  store i32 %114, i32* %115, align 8
  %116 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %117 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %103
  %122 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %123 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %3, align 4
  br label %264

128:                                              ; preds = %121
  %129 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %130 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @PTRIN(i32 %131)
  %133 = call i32 @copyin(i8* %132, %struct.l_ipc_kludge* %12, i32 8)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %3, align 4
  br label %264

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.l_ipc_kludge, %struct.l_ipc_kludge* %12, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @PTRIN(i32 %140)
  %142 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 1
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.l_ipc_kludge, %struct.l_ipc_kludge* %12, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 0
  store i32 %144, i32* %145, align 8
  br label %156

146:                                              ; preds = %103
  %147 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %148 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @PTRIN(i32 %149)
  %151 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 1
  store i8* %150, i8** %151, align 8
  %152 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %153 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.linux_msgrcv_args, %struct.linux_msgrcv_args* %11, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  br label %156

156:                                              ; preds = %146, %138
  %157 = load %struct.thread*, %struct.thread** %4, align 8
  %158 = call i32 @linux_msgrcv(%struct.thread* %157, %struct.linux_msgrcv_args* %11)
  store i32 %158, i32* %3, align 4
  br label %264

159:                                              ; preds = %2
  %160 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %161 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.linux_msgget_args, %struct.linux_msgget_args* %14, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %165 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.linux_msgget_args, %struct.linux_msgget_args* %14, i32 0, i32 0
  store i32 %166, i32* %167, align 4
  %168 = load %struct.thread*, %struct.thread** %4, align 8
  %169 = call i32 @linux_msgget(%struct.thread* %168, %struct.linux_msgget_args* %14)
  store i32 %169, i32* %3, align 4
  br label %264

170:                                              ; preds = %2
  %171 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %172 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %15, i32 0, i32 2
  store i32 %173, i32* %174, align 4
  %175 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %176 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %15, i32 0, i32 1
  store i32 %177, i32* %178, align 8
  %179 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %180 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @PTRIN(i32 %181)
  %183 = getelementptr inbounds %struct.linux_msgctl_args, %struct.linux_msgctl_args* %15, i32 0, i32 0
  store i8* %182, i8** %183, align 8
  %184 = load %struct.thread*, %struct.thread** %4, align 8
  %185 = call i32 @linux_msgctl(%struct.thread* %184, %struct.linux_msgctl_args* %15)
  store i32 %185, i32* %3, align 4
  br label %264

186:                                              ; preds = %2
  %187 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %188 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.linux_shmat_args, %struct.linux_shmat_args* %16, i32 0, i32 2
  store i32 %189, i32* %190, align 8
  %191 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %192 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @PTRIN(i32 %193)
  %195 = getelementptr inbounds %struct.linux_shmat_args, %struct.linux_shmat_args* %16, i32 0, i32 1
  store i8* %194, i8** %195, align 8
  %196 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %197 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.linux_shmat_args, %struct.linux_shmat_args* %16, i32 0, i32 0
  store i32 %198, i32* %199, align 8
  %200 = load %struct.thread*, %struct.thread** %4, align 8
  %201 = call i32 @linux_shmat(%struct.thread* %200, %struct.linux_shmat_args* %16)
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %186
  %205 = load i32, i32* %18, align 4
  store i32 %205, i32* %3, align 4
  br label %264

206:                                              ; preds = %186
  %207 = load %struct.thread*, %struct.thread** %4, align 8
  %208 = getelementptr inbounds %struct.thread, %struct.thread* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %17, align 4
  %212 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %213 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @PTRIN(i32 %214)
  %216 = call i32 @copyout(i32* %17, i8* %215, i32 4)
  store i32 %216, i32* %18, align 4
  %217 = load %struct.thread*, %struct.thread** %4, align 8
  %218 = getelementptr inbounds %struct.thread, %struct.thread* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 0, i32* %220, align 4
  %221 = load i32, i32* %18, align 4
  store i32 %221, i32* %3, align 4
  br label %264

222:                                              ; preds = %2
  %223 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %224 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @PTRIN(i32 %225)
  %227 = getelementptr inbounds %struct.linux_shmdt_args, %struct.linux_shmdt_args* %19, i32 0, i32 0
  store i8* %226, i8** %227, align 8
  %228 = load %struct.thread*, %struct.thread** %4, align 8
  %229 = call i32 @linux_shmdt(%struct.thread* %228, %struct.linux_shmdt_args* %19)
  store i32 %229, i32* %3, align 4
  br label %264

230:                                              ; preds = %2
  %231 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %232 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.linux_shmget_args, %struct.linux_shmget_args* %20, i32 0, i32 2
  store i32 %233, i32* %234, align 4
  %235 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %236 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.linux_shmget_args, %struct.linux_shmget_args* %20, i32 0, i32 1
  store i32 %237, i32* %238, align 4
  %239 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %240 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.linux_shmget_args, %struct.linux_shmget_args* %20, i32 0, i32 0
  store i32 %241, i32* %242, align 4
  %243 = load %struct.thread*, %struct.thread** %4, align 8
  %244 = call i32 @linux_shmget(%struct.thread* %243, %struct.linux_shmget_args* %20)
  store i32 %244, i32* %3, align 4
  br label %264

245:                                              ; preds = %2
  %246 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %247 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.linux_shmctl_args, %struct.linux_shmctl_args* %21, i32 0, i32 2
  store i32 %248, i32* %249, align 4
  %250 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %251 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.linux_shmctl_args, %struct.linux_shmctl_args* %21, i32 0, i32 1
  store i32 %252, i32* %253, align 8
  %254 = load %struct.linux_ipc_args*, %struct.linux_ipc_args** %5, align 8
  %255 = getelementptr inbounds %struct.linux_ipc_args, %struct.linux_ipc_args* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @PTRIN(i32 %256)
  %258 = getelementptr inbounds %struct.linux_shmctl_args, %struct.linux_shmctl_args* %21, i32 0, i32 0
  store i8* %257, i8** %258, align 8
  %259 = load %struct.thread*, %struct.thread** %4, align 8
  %260 = call i32 @linux_shmctl(%struct.thread* %259, %struct.linux_shmctl_args* %21)
  store i32 %260, i32* %3, align 4
  br label %264

261:                                              ; preds = %2
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* @EINVAL, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %245, %230, %222, %206, %204, %170, %159, %156, %136, %126, %83, %80, %78, %42, %26
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i8* @PTRIN(i32) #1

declare dso_local i32 @linux_semop(%struct.thread*, %struct.linux_semop_args*) #1

declare dso_local i32 @linux_semget(%struct.thread*, %struct.linux_semget_args*) #1

declare dso_local i32 @copyin(i8*, %struct.l_ipc_kludge*, i32) #1

declare dso_local i32 @linux_semctl(%struct.thread*, %struct.linux_semctl_args*) #1

declare dso_local i32 @linux_msgsnd(%struct.thread*, %struct.linux_msgsnd_args*) #1

declare dso_local i32 @linux_msgrcv(%struct.thread*, %struct.linux_msgrcv_args*) #1

declare dso_local i32 @linux_msgget(%struct.thread*, %struct.linux_msgget_args*) #1

declare dso_local i32 @linux_msgctl(%struct.thread*, %struct.linux_msgctl_args*) #1

declare dso_local i32 @linux_shmat(%struct.thread*, %struct.linux_shmat_args*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @linux_shmdt(%struct.thread*, %struct.linux_shmdt_args*) #1

declare dso_local i32 @linux_shmget(%struct.thread*, %struct.linux_shmget_args*) #1

declare dso_local i32 @linux_shmctl(%struct.thread*, %struct.linux_shmctl_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
