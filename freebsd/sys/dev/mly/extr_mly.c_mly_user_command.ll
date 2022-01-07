; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32 }
%struct.mly_user_command = type { i64, i64, i32, i32, i32, i32 }
%struct.mly_command = type { i64, i32, i64, i64, i32*, i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@MLY_CMD_DATAOUT = common dso_local global i32 0, align 4
@MLY_CMD_COMPLETE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mlyioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*, %struct.mly_user_command*)* @mly_user_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_user_command(%struct.mly_softc* %0, %struct.mly_user_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca %struct.mly_user_command*, align 8
  %6 = alloca %struct.mly_command*, align 8
  %7 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %4, align 8
  store %struct.mly_user_command* %1, %struct.mly_user_command** %5, align 8
  %8 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %9 = call i32 @MLY_LOCK(%struct.mly_softc* %8)
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = call i64 @mly_alloc_command(%struct.mly_softc* %10, %struct.mly_command** %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %15 = call i32 @MLY_UNLOCK(%struct.mly_softc* %14)
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %3, align 4
  br label %216

17:                                               ; preds = %2
  %18 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %19 = call i32 @MLY_UNLOCK(%struct.mly_softc* %18)
  %20 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %21 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %26 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %30 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 0, %31
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i64 [ %27, %24 ], [ %32, %28 ]
  %35 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %36 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %38 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %43 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call i32* @malloc(i64 %44, i32 %45, i32 %46)
  %48 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %49 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %7, align 4
  br label %197

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %56 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %61 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %62 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %66 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %69 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bzero(i32* %67, i64 %70)
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %74 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i32, i32* @MLY_CMD_DATAOUT, align 4
  %79 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %80 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %84 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %87 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %90 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @copyin(i32 %85, i32* %88, i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %197

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %98 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %97, i32 0, i32 5
  %99 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %100 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bcopy(i32* %98, i32* %101, i32 4)
  %103 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %104 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %106 = call i32 @MLY_LOCK(%struct.mly_softc* %105)
  %107 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %108 = call i32 @mly_start(%struct.mly_command* %107)
  store i32 %108, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %112 = call i32 @MLY_UNLOCK(%struct.mly_softc* %111)
  br label %197

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %122, %113
  %115 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %116 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MLY_CMD_COMPLETE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %124 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %125 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %124, i32 0, i32 0
  %126 = load i32, i32* @PRIBIO, align 4
  %127 = call i32 @mtx_sleep(%struct.mly_command* %123, i32* %125, i32 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %114

128:                                              ; preds = %114
  %129 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %130 = call i32 @MLY_UNLOCK(%struct.mly_softc* %129)
  %131 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %132 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %128
  %136 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %137 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %140 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %143 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @copyout(i32* %138, i32 %141, i64 %144)
  store i32 %145, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  br label %197

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %128
  %150 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %151 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %156 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %154
  %160 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %161 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %164 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %167 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %170 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @min(i64 %168, i64 %171)
  %173 = call i32 @copyout(i32* %162, i32 %165, i64 %172)
  store i32 %173, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %159
  br label %197

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176, %154, %149
  %178 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %179 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %182 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %184 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %187 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @min(i64 %185, i64 %188)
  %190 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %191 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %193 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mly_user_command*, %struct.mly_user_command** %5, align 8
  %196 = getelementptr inbounds %struct.mly_user_command, %struct.mly_user_command* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %177, %175, %147, %110, %94, %51
  %198 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %199 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %204 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @M_DEVBUF, align 4
  %207 = call i32 @free(i32* %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %197
  %209 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %210 = call i32 @MLY_LOCK(%struct.mly_softc* %209)
  %211 = load %struct.mly_command*, %struct.mly_command** %6, align 8
  %212 = call i32 @mly_release_command(%struct.mly_command* %211)
  %213 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %214 = call i32 @MLY_UNLOCK(%struct.mly_softc* %213)
  %215 = load i32, i32* %7, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %208, %13
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @MLY_LOCK(%struct.mly_softc*) #1

declare dso_local i64 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

declare dso_local i32 @MLY_UNLOCK(%struct.mly_softc*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @copyin(i32, i32*, i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @mly_start(%struct.mly_command*) #1

declare dso_local i32 @mtx_sleep(%struct.mly_command*, i32*, i32, i8*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
