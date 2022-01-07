; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_direct_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.uio = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@PIPE_WANTR = common dso_local global i32 0, align 4
@PIPE_WANTW = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pipdww\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pipdwc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pipdwt\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pipe %p leaked PIPE_DIRECTW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe*, %struct.uio*)* @pipe_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_direct_write(%struct.pipe* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pipe*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  store %struct.pipe* %0, %struct.pipe** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  br label %7

7:                                                ; preds = %113, %70, %2
  %8 = load %struct.pipe*, %struct.pipe** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PIPE_LOCK_ASSERT(%struct.pipe* %8, i32 %9)
  %11 = load %struct.pipe*, %struct.pipe** %4, align 8
  %12 = call i32 @pipelock(%struct.pipe* %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %223

16:                                               ; preds = %7
  %17 = load %struct.pipe*, %struct.pipe** %4, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PIPE_EOF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @EPIPE, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.pipe*, %struct.pipe** %4, align 8
  %26 = call i32 @pipeunlock(%struct.pipe* %25)
  br label %223

27:                                               ; preds = %16
  %28 = load %struct.pipe*, %struct.pipe** %4, align 8
  %29 = getelementptr inbounds %struct.pipe, %struct.pipe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PIPE_DIRECTW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %27
  %35 = load %struct.pipe*, %struct.pipe** %4, align 8
  %36 = getelementptr inbounds %struct.pipe, %struct.pipe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PIPE_WANTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @PIPE_WANTR, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.pipe*, %struct.pipe** %4, align 8
  %45 = getelementptr inbounds %struct.pipe, %struct.pipe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.pipe*, %struct.pipe** %4, align 8
  %49 = call i32 @wakeup(%struct.pipe* %48)
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.pipe*, %struct.pipe** %4, align 8
  %52 = call i32 @pipeselwakeup(%struct.pipe* %51)
  %53 = load i32, i32* @PIPE_WANTW, align 4
  %54 = load %struct.pipe*, %struct.pipe** %4, align 8
  %55 = getelementptr inbounds %struct.pipe, %struct.pipe* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.pipe*, %struct.pipe** %4, align 8
  %59 = call i32 @pipeunlock(%struct.pipe* %58)
  %60 = load %struct.pipe*, %struct.pipe** %4, align 8
  %61 = load %struct.pipe*, %struct.pipe** %4, align 8
  %62 = call i32 @PIPE_MTX(%struct.pipe* %61)
  %63 = load i32, i32* @PRIBIO, align 4
  %64 = load i32, i32* @PCATCH, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @msleep(%struct.pipe* %60, i32 %62, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %223

70:                                               ; preds = %50
  br label %7

71:                                               ; preds = %27
  %72 = load %struct.pipe*, %struct.pipe** %4, align 8
  %73 = getelementptr inbounds %struct.pipe, %struct.pipe* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %71
  %78 = load %struct.pipe*, %struct.pipe** %4, align 8
  %79 = getelementptr inbounds %struct.pipe, %struct.pipe* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PIPE_WANTR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32, i32* @PIPE_WANTR, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.pipe*, %struct.pipe** %4, align 8
  %88 = getelementptr inbounds %struct.pipe, %struct.pipe* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.pipe*, %struct.pipe** %4, align 8
  %92 = call i32 @wakeup(%struct.pipe* %91)
  br label %93

93:                                               ; preds = %84, %77
  %94 = load %struct.pipe*, %struct.pipe** %4, align 8
  %95 = call i32 @pipeselwakeup(%struct.pipe* %94)
  %96 = load i32, i32* @PIPE_WANTW, align 4
  %97 = load %struct.pipe*, %struct.pipe** %4, align 8
  %98 = getelementptr inbounds %struct.pipe, %struct.pipe* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.pipe*, %struct.pipe** %4, align 8
  %102 = call i32 @pipeunlock(%struct.pipe* %101)
  %103 = load %struct.pipe*, %struct.pipe** %4, align 8
  %104 = load %struct.pipe*, %struct.pipe** %4, align 8
  %105 = call i32 @PIPE_MTX(%struct.pipe* %104)
  %106 = load i32, i32* @PRIBIO, align 4
  %107 = load i32, i32* @PCATCH, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @msleep(%struct.pipe* %103, i32 %105, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %223

113:                                              ; preds = %93
  br label %7

114:                                              ; preds = %71
  %115 = load %struct.pipe*, %struct.pipe** %4, align 8
  %116 = load %struct.uio*, %struct.uio** %5, align 8
  %117 = call i32 @pipe_build_write_buffer(%struct.pipe* %115, %struct.uio* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.pipe*, %struct.pipe** %4, align 8
  %122 = call i32 @pipeunlock(%struct.pipe* %121)
  br label %223

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %177, %123
  %125 = load %struct.pipe*, %struct.pipe** %4, align 8
  %126 = getelementptr inbounds %struct.pipe, %struct.pipe* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.pipe*, %struct.pipe** %4, align 8
  %132 = getelementptr inbounds %struct.pipe, %struct.pipe* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PIPE_EOF, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br label %137

137:                                              ; preds = %130, %124
  %138 = phi i1 [ false, %124 ], [ %136, %130 ]
  br i1 %138, label %139, label %178

139:                                              ; preds = %137
  %140 = load %struct.pipe*, %struct.pipe** %4, align 8
  %141 = getelementptr inbounds %struct.pipe, %struct.pipe* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PIPE_WANTR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load i32, i32* @PIPE_WANTR, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.pipe*, %struct.pipe** %4, align 8
  %150 = getelementptr inbounds %struct.pipe, %struct.pipe* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.pipe*, %struct.pipe** %4, align 8
  %154 = call i32 @wakeup(%struct.pipe* %153)
  br label %155

155:                                              ; preds = %146, %139
  %156 = load %struct.pipe*, %struct.pipe** %4, align 8
  %157 = call i32 @pipeselwakeup(%struct.pipe* %156)
  %158 = load i32, i32* @PIPE_WANTW, align 4
  %159 = load %struct.pipe*, %struct.pipe** %4, align 8
  %160 = getelementptr inbounds %struct.pipe, %struct.pipe* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.pipe*, %struct.pipe** %4, align 8
  %164 = call i32 @pipeunlock(%struct.pipe* %163)
  %165 = load %struct.pipe*, %struct.pipe** %4, align 8
  %166 = load %struct.pipe*, %struct.pipe** %4, align 8
  %167 = call i32 @PIPE_MTX(%struct.pipe* %166)
  %168 = load i32, i32* @PRIBIO, align 4
  %169 = load i32, i32* @PCATCH, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @msleep(%struct.pipe* %165, i32 %167, i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %171, i32* %6, align 4
  %172 = load %struct.pipe*, %struct.pipe** %4, align 8
  %173 = call i32 @pipelock(%struct.pipe* %172, i32 0)
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %155
  br label %178

177:                                              ; preds = %155
  br label %124

178:                                              ; preds = %176, %137
  %179 = load %struct.pipe*, %struct.pipe** %4, align 8
  %180 = getelementptr inbounds %struct.pipe, %struct.pipe* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @PIPE_EOF, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load %struct.pipe*, %struct.pipe** %4, align 8
  %187 = getelementptr inbounds %struct.pipe, %struct.pipe* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.pipe*, %struct.pipe** %4, align 8
  %190 = call i32 @pipe_destroy_write_buffer(%struct.pipe* %189)
  %191 = load %struct.pipe*, %struct.pipe** %4, align 8
  %192 = call i32 @pipeselwakeup(%struct.pipe* %191)
  %193 = load i32, i32* @EPIPE, align 4
  store i32 %193, i32* %6, align 4
  br label %209

194:                                              ; preds = %178
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @EINTR, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @ERESTART, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198, %194
  %203 = load %struct.pipe*, %struct.pipe** %4, align 8
  %204 = call i32 @pipe_clone_write_buffer(%struct.pipe* %203)
  br label %208

205:                                              ; preds = %198
  %206 = load %struct.pipe*, %struct.pipe** %4, align 8
  %207 = call i32 @pipe_destroy_write_buffer(%struct.pipe* %206)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %185
  %210 = load %struct.pipe*, %struct.pipe** %4, align 8
  %211 = call i32 @pipeunlock(%struct.pipe* %210)
  %212 = load %struct.pipe*, %struct.pipe** %4, align 8
  %213 = getelementptr inbounds %struct.pipe, %struct.pipe* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @PIPE_DIRECTW, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = load %struct.pipe*, %struct.pipe** %4, align 8
  %220 = bitcast %struct.pipe* %219 to i8*
  %221 = call i32 @KASSERT(i32 %218, i8* %220)
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %3, align 4
  br label %227

223:                                              ; preds = %120, %112, %69, %23, %15
  %224 = load %struct.pipe*, %struct.pipe** %4, align 8
  %225 = call i32 @wakeup(%struct.pipe* %224)
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %223, %209
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @PIPE_LOCK_ASSERT(%struct.pipe*, i32) #1

declare dso_local i32 @pipelock(%struct.pipe*, i32) #1

declare dso_local i32 @pipeunlock(%struct.pipe*) #1

declare dso_local i32 @wakeup(%struct.pipe*) #1

declare dso_local i32 @pipeselwakeup(%struct.pipe*) #1

declare dso_local i32 @msleep(%struct.pipe*, i32, i32, i8*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @pipe_build_write_buffer(%struct.pipe*, %struct.uio*) #1

declare dso_local i32 @pipe_destroy_write_buffer(%struct.pipe*) #1

declare dso_local i32 @pipe_clone_write_buffer(%struct.pipe*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
