; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_updatelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_updatelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsstate = type { i32 }
%struct.nfslock = type { i32, i64, i64, %struct.nfslockfile*, %struct.nfsstate* }
%struct.nfslockfile = type { i32 }

@NFSLCK_UNLOCK = common dso_local global i32 0, align 4
@lo_lckowner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nfsd srv update unlock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstate*, %struct.nfslock**, %struct.nfslock**, %struct.nfslockfile*)* @nfsrv_updatelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_updatelock(%struct.nfsstate* %0, %struct.nfslock** %1, %struct.nfslock** %2, %struct.nfslockfile* %3) #0 {
  %5 = alloca %struct.nfsstate*, align 8
  %6 = alloca %struct.nfslock**, align 8
  %7 = alloca %struct.nfslock**, align 8
  %8 = alloca %struct.nfslockfile*, align 8
  %9 = alloca %struct.nfslock*, align 8
  %10 = alloca %struct.nfslock*, align 8
  %11 = alloca %struct.nfslock*, align 8
  %12 = alloca %struct.nfslock*, align 8
  %13 = alloca %struct.nfslock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.nfsstate* %0, %struct.nfsstate** %5, align 8
  store %struct.nfslock** %1, %struct.nfslock*** %6, align 8
  store %struct.nfslock** %2, %struct.nfslock*** %7, align 8
  store %struct.nfslockfile* %3, %struct.nfslockfile** %8, align 8
  %17 = load %struct.nfslock**, %struct.nfslock*** %6, align 8
  %18 = load %struct.nfslock*, %struct.nfslock** %17, align 8
  store %struct.nfslock* %18, %struct.nfslock** %9, align 8
  %19 = load %struct.nfslock**, %struct.nfslock*** %7, align 8
  %20 = load %struct.nfslock*, %struct.nfslock** %19, align 8
  store %struct.nfslock* %20, %struct.nfslock** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %22 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NFSLCK_UNLOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %30 = icmp ne %struct.nfsstate* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %33 = bitcast %struct.nfsstate* %32 to %struct.nfslock*
  store %struct.nfslock* %33, %struct.nfslock** %12, align 8
  %34 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %35 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %34, i32 0, i32 0
  %36 = call %struct.nfslock* @LIST_FIRST(i32* %35)
  store %struct.nfslock* %36, %struct.nfslock** %10, align 8
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %39 = bitcast %struct.nfslockfile* %38 to %struct.nfslock*
  store %struct.nfslock* %39, %struct.nfslock** %12, align 8
  %40 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %41 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %40, i32 0, i32 0
  %42 = call %struct.nfslock* @LIST_FIRST(i32* %41)
  store %struct.nfslock* %42, %struct.nfslock** %10, align 8
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %225, %151, %122, %43
  %45 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %46 = icmp ne %struct.nfslock* %45, null
  br i1 %46, label %47, label %226

47:                                               ; preds = %44
  %48 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %49 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %48, i32 0, i32 3
  %50 = load %struct.nfslockfile*, %struct.nfslockfile** %49, align 8
  %51 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %52 = icmp eq %struct.nfslockfile* %50, %51
  br i1 %52, label %53, label %208

53:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  %54 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %55 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %58 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %207

61:                                               ; preds = %53
  %62 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %63 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %66 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %226

70:                                               ; preds = %61
  %71 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %72 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %75 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %94, label %78

78:                                               ; preds = %70
  %79 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %80 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %83 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %81, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %78
  %87 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %88 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %91 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %86, %70
  %95 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %96 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %99 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %104 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %107 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %110 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %113 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %118 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %121 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  store %struct.nfslock* %123, %struct.nfslock** %11, align 8
  %124 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %125 = load i32, i32* @lo_lckowner, align 4
  %126 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %124, i32 %125)
  store %struct.nfslock* %126, %struct.nfslock** %10, align 8
  %127 = load %struct.nfslock*, %struct.nfslock** %11, align 8
  %128 = call i32 @nfsrv_freenfslock(%struct.nfslock* %127)
  br label %44

129:                                              ; preds = %86, %78
  %130 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %131 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %134 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp sle i64 %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %139 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %142 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %226

143:                                              ; preds = %129
  %144 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %145 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %148 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %146, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %143
  %152 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %153 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %156 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  store %struct.nfslock* %157, %struct.nfslock** %12, align 8
  %158 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %159 = load i32, i32* @lo_lckowner, align 4
  %160 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %158, i32 %159)
  store %struct.nfslock* %160, %struct.nfslock** %10, align 8
  br label %44

161:                                              ; preds = %143
  %162 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %163 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %16, align 8
  %165 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %166 = icmp eq %struct.nfslock* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167
  %173 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  store %struct.nfslock* %173, %struct.nfslock** %13, align 8
  %174 = load %struct.nfslock**, %struct.nfslock*** %6, align 8
  store %struct.nfslock* null, %struct.nfslock** %174, align 8
  br label %175

175:                                              ; preds = %172, %161
  %176 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %177 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %180 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %182 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %185 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %187 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %190 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %192 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %193 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %192, i32 0, i32 4
  store %struct.nfsstate* %191, %struct.nfsstate** %193, align 8
  %194 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %195 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %196 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %195, i32 0, i32 3
  store %struct.nfslockfile* %194, %struct.nfslockfile** %196, align 8
  %197 = load i64, i64* %16, align 8
  %198 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %199 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.nfslock*, %struct.nfslock** %13, align 8
  %201 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %202 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %203 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %204 = call i32 @nfsrv_insertlock(%struct.nfslock* %200, %struct.nfslock* %201, %struct.nfsstate* %202, %struct.nfslockfile* %203)
  %205 = load %struct.nfslock**, %struct.nfslock*** %7, align 8
  store %struct.nfslock* null, %struct.nfslock** %205, align 8
  %206 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  store %struct.nfslock* %206, %struct.nfslock** %12, align 8
  br label %226

207:                                              ; preds = %53
  br label %208

208:                                              ; preds = %207, %47
  %209 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  store %struct.nfslock* %209, %struct.nfslock** %12, align 8
  %210 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %211 = load i32, i32* @lo_lckowner, align 4
  %212 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %210, i32 %211)
  store %struct.nfslock* %212, %struct.nfslock** %10, align 8
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %208
  %216 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %217 = icmp eq %struct.nfslock* %216, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %220 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %219, i32 0, i32 3
  %221 = load %struct.nfslockfile*, %struct.nfslockfile** %220, align 8
  %222 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %223 = icmp ne %struct.nfslockfile* %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218, %215
  br label %226

225:                                              ; preds = %218, %208
  br label %44

226:                                              ; preds = %224, %175, %137, %69, %44
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  %230 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %231 = load %struct.nfslock*, %struct.nfslock** %12, align 8
  %232 = load %struct.nfsstate*, %struct.nfsstate** %5, align 8
  %233 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %234 = call i32 @nfsrv_insertlock(%struct.nfslock* %230, %struct.nfslock* %231, %struct.nfsstate* %232, %struct.nfslockfile* %233)
  %235 = load %struct.nfslock**, %struct.nfslock*** %6, align 8
  store %struct.nfslock* null, %struct.nfslock** %235, align 8
  br label %236

236:                                              ; preds = %229, %226
  ret void
}

declare dso_local %struct.nfslock* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfslock* @LIST_NEXT(%struct.nfslock*, i32) #1

declare dso_local i32 @nfsrv_freenfslock(%struct.nfslock*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nfsrv_insertlock(%struct.nfslock*, %struct.nfslock*, %struct.nfsstate*, %struct.nfslockfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
