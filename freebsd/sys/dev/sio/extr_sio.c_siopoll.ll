; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siopoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32, i32, i32, i32, i32, i32, i64, %struct.tty* }
%struct.tty = type { i32 }

@com_events = common dso_local global i64 0, align 8
@sio_numunits = common dso_local global i32 0, align 4
@sio_lock = common dso_local global i32 0, align 4
@CS_CHECKMSR = common dso_local global i32 0, align 4
@LOTS_OF_EVENTS = common dso_local global i64 0, align 8
@MSR_DCD = common dso_local global i32 0, align 4
@CS_ODONE = common dso_local global i32 0, align 4
@CS_BUSY = common dso_local global i32 0, align 4
@CSE_BUSYCHECK = common dso_local global i32 0, align 4
@siobusycheck = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @siopoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siopoll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.com_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @com_events, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %188

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %187, %11
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %180, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @sio_numunits, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %183

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.com_s* @com_addr(i32 %18)
  store %struct.com_s* %19, %struct.com_s** %4, align 8
  %20 = load %struct.com_s*, %struct.com_s** %4, align 8
  %21 = icmp eq %struct.com_s* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %180

23:                                               ; preds = %17
  %24 = load %struct.com_s*, %struct.com_s** %4, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 7
  %26 = load %struct.tty*, %struct.tty** %25, align 8
  store %struct.tty* %26, %struct.tty** %6, align 8
  %27 = load %struct.tty*, %struct.tty** %6, align 8
  %28 = icmp eq %struct.tty* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.com_s*, %struct.com_s** %4, align 8
  %31 = getelementptr inbounds %struct.com_s, %struct.com_s* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29, %23
  %35 = call i32 @mtx_lock_spin(i32* @sio_lock)
  %36 = load %struct.com_s*, %struct.com_s** %4, align 8
  %37 = getelementptr inbounds %struct.com_s, %struct.com_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.com_s*, %struct.com_s** %4, align 8
  %40 = getelementptr inbounds %struct.com_s, %struct.com_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.com_s*, %struct.com_s** %4, align 8
  %44 = getelementptr inbounds %struct.com_s, %struct.com_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.com_s*, %struct.com_s** %4, align 8
  %47 = getelementptr inbounds %struct.com_s, %struct.com_s* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.com_s*, %struct.com_s** %4, align 8
  %49 = getelementptr inbounds %struct.com_s, %struct.com_s* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CS_CHECKMSR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %34
  %55 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @CS_CHECKMSR, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.com_s*, %struct.com_s** %4, align 8
  %63 = getelementptr inbounds %struct.com_s, %struct.com_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %54, %34
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @com_events, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* @com_events, align 8
  %71 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  br label %180

72:                                               ; preds = %29
  %73 = load %struct.com_s*, %struct.com_s** %4, align 8
  %74 = getelementptr inbounds %struct.com_s, %struct.com_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.com_s*, %struct.com_s** %4, align 8
  %77 = getelementptr inbounds %struct.com_s, %struct.com_s* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = call i32 @mtx_lock_spin(i32* @sio_lock)
  %82 = load %struct.com_s*, %struct.com_s** %4, align 8
  %83 = call i32 @sioinput(%struct.com_s* %82)
  %84 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.com_s*, %struct.com_s** %4, align 8
  %87 = getelementptr inbounds %struct.com_s, %struct.com_s* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CS_CHECKMSR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %85
  %93 = call i32 @mtx_lock_spin(i32* @sio_lock)
  %94 = load %struct.com_s*, %struct.com_s** %4, align 8
  %95 = getelementptr inbounds %struct.com_s, %struct.com_s* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.com_s*, %struct.com_s** %4, align 8
  %98 = getelementptr inbounds %struct.com_s, %struct.com_s* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = xor i32 %96, %99
  store i32 %100, i32* %7, align 4
  %101 = load %struct.com_s*, %struct.com_s** %4, align 8
  %102 = getelementptr inbounds %struct.com_s, %struct.com_s* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.com_s*, %struct.com_s** %4, align 8
  %105 = getelementptr inbounds %struct.com_s, %struct.com_s* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %107 = load i64, i64* @com_events, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* @com_events, align 8
  %109 = load i32, i32* @CS_CHECKMSR, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.com_s*, %struct.com_s** %4, align 8
  %112 = getelementptr inbounds %struct.com_s, %struct.com_s* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @MSR_DCD, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %92
  %121 = load %struct.tty*, %struct.tty** %6, align 8
  %122 = load %struct.com_s*, %struct.com_s** %4, align 8
  %123 = getelementptr inbounds %struct.com_s, %struct.com_s* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MSR_DCD, align 4
  %126 = and i32 %124, %125
  %127 = call i32 @ttyld_modem(%struct.tty* %121, i32 %126)
  br label %128

128:                                              ; preds = %120, %92
  br label %129

129:                                              ; preds = %128, %85
  %130 = load %struct.com_s*, %struct.com_s** %4, align 8
  %131 = getelementptr inbounds %struct.com_s, %struct.com_s* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CS_ODONE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %175

136:                                              ; preds = %129
  %137 = call i32 @mtx_lock_spin(i32* @sio_lock)
  %138 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %139 = load i64, i64* @com_events, align 8
  %140 = sub nsw i64 %139, %138
  store i64 %140, i64* @com_events, align 8
  %141 = load i32, i32* @CS_ODONE, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.com_s*, %struct.com_s** %4, align 8
  %144 = getelementptr inbounds %struct.com_s, %struct.com_s* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = call i32 @mtx_unlock_spin(i32* @sio_lock)
  %148 = load %struct.com_s*, %struct.com_s** %4, align 8
  %149 = getelementptr inbounds %struct.com_s, %struct.com_s* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CS_BUSY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %172, label %154

154:                                              ; preds = %136
  %155 = load %struct.com_s*, %struct.com_s** %4, align 8
  %156 = getelementptr inbounds %struct.com_s, %struct.com_s* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CSE_BUSYCHECK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @siobusycheck, align 4
  %163 = load %struct.com_s*, %struct.com_s** %4, align 8
  %164 = load i32, i32* @hz, align 4
  %165 = sdiv i32 %164, 100
  %166 = call i32 @timeout(i32 %162, %struct.com_s* %163, i32 %165)
  %167 = load i32, i32* @CSE_BUSYCHECK, align 4
  %168 = load %struct.com_s*, %struct.com_s** %4, align 8
  %169 = getelementptr inbounds %struct.com_s, %struct.com_s* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %161, %154, %136
  %173 = load %struct.tty*, %struct.tty** %6, align 8
  %174 = call i32 @ttyld_start(%struct.tty* %173)
  br label %175

175:                                              ; preds = %172, %129
  %176 = load i64, i64* @com_events, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %183

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179, %66, %22
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %13

183:                                              ; preds = %178, %13
  %184 = load i64, i64* @com_events, align 8
  %185 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %186 = icmp sge i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %12

188:                                              ; preds = %10, %183
  ret void
}

declare dso_local %struct.com_s* @com_addr(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @sioinput(%struct.com_s*) #1

declare dso_local i32 @ttyld_modem(%struct.tty*, i32) #1

declare dso_local i32 @timeout(i32, %struct.com_s*, i32) #1

declare dso_local i32 @ttyld_start(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
