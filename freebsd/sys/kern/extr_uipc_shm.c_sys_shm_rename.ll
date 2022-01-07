; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_sys_shm_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_sys_shm_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.shm_rename_args = type { i32, i32, i32 }
%struct.shmfd = type { i64 }

@SHM_RENAME_NOREPLACE = common dso_local global i32 0, align 4
@SHM_RENAME_EXCHANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_SHMFD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FNV1_32_INIT = common dso_local global i32 0, align 4
@shm_dict_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Our shm disappeared during shm_rename: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_shm_rename(%struct.thread* %0, %struct.shm_rename_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.shm_rename_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.shmfd*, align 8
  %10 = alloca %struct.shmfd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.shm_rename_args* %1, %struct.shm_rename_args** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = load %struct.shm_rename_args*, %struct.shm_rename_args** %4, align 8
  %14 = getelementptr inbounds %struct.shm_rename_args, %struct.shm_rename_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @SHM_RENAME_NOREPLACE, align 4
  %18 = load i32, i32* @SHM_RENAME_EXCHANGE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %11, align 4
  br label %178

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SHM_RENAME_NOREPLACE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SHM_RENAME_EXCHANGE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %11, align 4
  br label %178

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @MAXPATHLEN, align 4
  %39 = load i32, i32* @M_SHMFD, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i8* @malloc(i32 %38, i32 %39, i32 %40)
  store i8* %41, i8** %5, align 8
  %42 = load %struct.shm_rename_args*, %struct.shm_rename_args** %4, align 8
  %43 = getelementptr inbounds %struct.shm_rename_args, %struct.shm_rename_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = call i32 @copyinstr(i32 %44, i8* %45, i32 %46, i32* null)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %178

51:                                               ; preds = %37
  %52 = load i32, i32* @MAXPATHLEN, align 4
  %53 = load i32, i32* @M_SHMFD, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = call i8* @malloc(i32 %52, i32 %53, i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = load %struct.shm_rename_args*, %struct.shm_rename_args** %4, align 8
  %57 = getelementptr inbounds %struct.shm_rename_args, %struct.shm_rename_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @MAXPATHLEN, align 4
  %61 = call i32 @copyinstr(i32 %58, i8* %59, i32 %60, i32* null)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %178

65:                                               ; preds = %51
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* @MAXPATHLEN, align 4
  %69 = call i64 @strncmp(i8* %66, i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %178

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @FNV1_32_INIT, align 4
  %75 = call i32 @fnv_32_str(i8* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @FNV1_32_INIT, align 4
  %78 = call i32 @fnv_32_str(i8* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = call i32 @sx_xlock(i32* @shm_dict_lock)
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.shmfd* @shm_lookup(i8* %80, i32 %81)
  store %struct.shmfd* %82, %struct.shmfd** %9, align 8
  %83 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %84 = icmp eq %struct.shmfd* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  %87 = load i32, i32* @ENOENT, align 4
  store i32 %87, i32* %11, align 4
  br label %178

88:                                               ; preds = %72
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.shmfd* @shm_lookup(i8* %89, i32 %90)
  store %struct.shmfd* %91, %struct.shmfd** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SHM_RENAME_NOREPLACE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %98 = icmp ne %struct.shmfd* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  %101 = load i32, i32* @EEXIST, align 4
  store i32 %101, i32* %11, align 4
  br label %178

102:                                              ; preds = %96, %88
  %103 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %104 = call i32 @shm_hold(%struct.shmfd* %103)
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.thread*, %struct.thread** %3, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @shm_remove(i8* %105, i32 %106, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @ENOENT, align 4
  %113 = icmp ne i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @KASSERT(i32 %114, i8* %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %102
  %120 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %121 = call i32 @shm_drop(%struct.shmfd* %120)
  %122 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  br label %178

123:                                              ; preds = %102
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @SHM_RENAME_EXCHANGE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %130 = icmp ne %struct.shmfd* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %133 = call i32 @shm_hold(%struct.shmfd* %132)
  br label %134

134:                                              ; preds = %131, %128, %123
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.thread*, %struct.thread** %3, align 8
  %138 = getelementptr inbounds %struct.thread, %struct.thread* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @shm_remove(i8* %135, i32 %136, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %134
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @ENOENT, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %151 = call i32 @shm_insert(i8* %148, i32 %149, %struct.shmfd* %150)
  %152 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %153 = call i32 @shm_drop(%struct.shmfd* %152)
  store i8* null, i8** %5, align 8
  %154 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  br label %178

155:                                              ; preds = %143, %134
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %159 = call i32 @shm_insert(i8* %156, i32 %157, %struct.shmfd* %158)
  store i8* null, i8** %6, align 8
  %160 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %161 = call i32 @shm_drop(%struct.shmfd* %160)
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SHM_RENAME_EXCHANGE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %155
  %167 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %168 = icmp ne %struct.shmfd* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %173 = call i32 @shm_insert(i8* %170, i32 %171, %struct.shmfd* %172)
  store i8* null, i8** %5, align 8
  %174 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %175 = call i32 @shm_drop(%struct.shmfd* %174)
  br label %176

176:                                              ; preds = %169, %166, %155
  store i32 0, i32* %11, align 4
  %177 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  br label %178

178:                                              ; preds = %176, %147, %119, %99, %85, %71, %64, %50, %35, %23
  %179 = load i8*, i8** %5, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* @M_SHMFD, align 4
  %184 = call i32 @free(i8* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i8*, i8** %6, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* @M_SHMFD, align 4
  %191 = call i32 @free(i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %11, align 4
  ret i32 %193
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fnv_32_str(i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.shmfd* @shm_lookup(i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @shm_hold(%struct.shmfd*) #1

declare dso_local i32 @shm_remove(i8*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @shm_drop(%struct.shmfd*) #1

declare dso_local i32 @shm_insert(i8*, i32, %struct.shmfd*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
