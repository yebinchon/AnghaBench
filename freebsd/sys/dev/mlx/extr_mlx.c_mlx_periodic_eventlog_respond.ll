; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_eventlog_respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_eventlog_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i64, i64, %struct.mlx_softc* }
%struct.mlx_softc = type { i64, i64, i32, i32 }
%struct.mlx_eventlog_entry = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@mlx_sense_messages = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"for unknown reason\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"physical drive %d:%d killed %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"physical drive %d:%d reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"physical drive %d:%d error log: sense = %d asc = %x asq = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  info %4D csi %4D\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unknown log message type 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"error reading message log - %s\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@MLX_EVENTLOG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_command*)* @mlx_periodic_eventlog_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_periodic_eventlog_respond(%struct.mlx_command* %0) #0 {
  %2 = alloca %struct.mlx_command*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca %struct.mlx_eventlog_entry*, align 8
  %5 = alloca i8*, align 8
  store %struct.mlx_command* %0, %struct.mlx_command** %2, align 8
  %6 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %7 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %6, i32 0, i32 2
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  store %struct.mlx_softc* %8, %struct.mlx_softc** %3, align 8
  %9 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %10 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mlx_eventlog_entry*
  store %struct.mlx_eventlog_entry* %12, %struct.mlx_eventlog_entry** %4, align 8
  %13 = call i32 @debug_called(i32 1)
  %14 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %15 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %14)
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %21 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %151

24:                                               ; preds = %1
  %25 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %26 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %142 [
    i32 128, label %28
  ]

28:                                               ; preds = %24
  %29 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %30 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %35 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %40 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i8**, i8*** @mlx_sense_messages, align 8
  %43 = call i64 @nitems(i8** %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i8**, i8*** @mlx_sense_messages, align 8
  %47 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %48 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  br label %53

52:                                               ; preds = %38
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %53

53:                                               ; preds = %52, %45
  %54 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %58 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %61 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %53, %33, %28
  %66 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %67 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %72 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 41
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %80 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %83 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %70, %65
  %87 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %88 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91

91:                                               ; preds = %86
  %92 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %93 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %98 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %103 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 1
  br i1 %105, label %141, label %106

106:                                              ; preds = %101
  %107 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %108 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 2
  br i1 %110, label %141, label %111

111:                                              ; preds = %106, %96, %91
  %112 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %116 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %119 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %122 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %125 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %128 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126, i64 %129)
  %131 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %132 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %135 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %138 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %111, %106, %101, %86
  br label %150

142:                                              ; preds = %24
  %143 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %144 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlx_eventlog_entry*, %struct.mlx_eventlog_entry** %4, align 8
  %147 = getelementptr inbounds %struct.mlx_eventlog_entry, %struct.mlx_eventlog_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %142, %141
  br label %163

151:                                              ; preds = %1
  %152 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %153 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %156 = call i32 @mlx_diagnose_command(%struct.mlx_command* %155)
  %157 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %159 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %162 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %151, %150
  %164 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %165 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @M_DEVBUF, align 4
  %168 = call i32 @free(i64 %166, i32 %167)
  %169 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %170 = call i32 @mlx_releasecmd(%struct.mlx_command* %169)
  %171 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %172 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %175 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %173, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %163
  %179 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %180 = call i32 @mlx_periodic_eventlog_poll(%struct.mlx_softc* %179)
  br label %188

181:                                              ; preds = %163
  %182 = load i32, i32* @MLX_EVENTLOG_BUSY, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %185 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %178
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @mlx_periodic_eventlog_poll(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
