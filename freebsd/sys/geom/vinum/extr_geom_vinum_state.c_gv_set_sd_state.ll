; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_sd_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_sd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i32, i32, i32, %struct.gv_plex*, %struct.gv_drive* }
%struct.gv_plex = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gv_drive = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"gv_set_sd_state: NULL s\00", align 1
@GV_SETSTATE_FORCE = common dso_local global i32 0, align 4
@GV_ERR_ISATTACHED = common dso_local global i32 0, align 4
@GV_ERR_SETSTATE = common dso_local global i32 0, align 4
@GV_DRIVE_UP = common dso_local global i32 0, align 4
@GV_PLEX_RAID5 = common dso_local global i32 0, align 4
@GV_SD_CANGOUP = common dso_local global i32 0, align 4
@GV_PLEX_SYNCING = common dso_local global i32 0, align 4
@GV_ERR_INVSTATE = common dso_local global i32 0, align 4
@GV_SETSTATE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_set_sd_state(%struct.gv_sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gv_sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gv_drive*, align 8
  %9 = alloca %struct.gv_plex*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gv_sd* %0, %struct.gv_sd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %13 = icmp ne %struct.gv_sd* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %17 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %192

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %155 [
    i32 132, label %25
    i32 130, label %38
    i32 131, label %38
    i32 128, label %46
  ]

25:                                               ; preds = %23
  %26 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %27 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %26, i32 0, i32 3
  %28 = load %struct.gv_plex*, %struct.gv_plex** %27, align 8
  %29 = icmp ne %struct.gv_plex* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @GV_ERR_ISATTACHED, align 4
  store i32 %36, i32* %4, align 4
  br label %192

37:                                               ; preds = %30, %25
  br label %163

38:                                               ; preds = %23, %23
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %44, i32* %4, align 4
  br label %192

45:                                               ; preds = %38
  br label %163

46:                                               ; preds = %23
  %47 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %48 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %47, i32 0, i32 4
  %49 = load %struct.gv_drive*, %struct.gv_drive** %48, align 8
  store %struct.gv_drive* %49, %struct.gv_drive** %8, align 8
  %50 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %51 = icmp eq %struct.gv_drive* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.gv_drive*, %struct.gv_drive** %8, align 8
  %54 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GV_DRIVE_UP, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %59, i32* %4, align 4
  br label %192

60:                                               ; preds = %52
  %61 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %62 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %152 [
    i32 130, label %64
    i32 131, label %64
    i32 132, label %65
    i32 129, label %106
  ]

64:                                               ; preds = %60, %60
  br label %154

65:                                               ; preds = %60
  %66 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %67 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %66, i32 0, i32 3
  %68 = load %struct.gv_plex*, %struct.gv_plex** %67, align 8
  store %struct.gv_plex* %68, %struct.gv_plex** %9, align 8
  %69 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %70 = icmp eq %struct.gv_plex* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %154

72:                                               ; preds = %65
  %73 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %74 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GV_PLEX_RAID5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %154

79:                                               ; preds = %72
  %80 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %81 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GV_SD_CANGOUP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* @GV_SD_CANGOUP, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %90 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %154

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %154

99:                                               ; preds = %93
  %100 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %101 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %100, i32 0, i32 0
  store i32 129, i32* %101, align 8
  br label %102

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %105, i32* %11, align 4
  br label %154

106:                                              ; preds = %60
  %107 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %108 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %107, i32 0, i32 3
  %109 = load %struct.gv_plex*, %struct.gv_plex** %108, align 8
  store %struct.gv_plex* %109, %struct.gv_plex** %9, align 8
  %110 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %111 = icmp eq %struct.gv_plex* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %106
  br label %154

118:                                              ; preds = %112
  %119 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %120 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @GV_PLEX_RAID5, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %126 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %149, label %131

131:                                              ; preds = %124, %118
  %132 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %133 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GV_PLEX_SYNCING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %140 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %145 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GV_PLEX_RAID5, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %124
  br label %154

150:                                              ; preds = %143, %138, %131
  %151 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %151, i32* %4, align 4
  br label %192

152:                                              ; preds = %60
  %153 = load i32, i32* @GV_ERR_INVSTATE, align 4
  store i32 %153, i32* %4, align 4
  br label %192

154:                                              ; preds = %149, %117, %104, %98, %86, %78, %71, %64
  br label %163

155:                                              ; preds = %23
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %161, i32* %4, align 4
  br label %192

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %154, %45, %37
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %169 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %163
  %171 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %172 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %171, i32 0, i32 3
  %173 = load %struct.gv_plex*, %struct.gv_plex** %172, align 8
  %174 = icmp ne %struct.gv_plex* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %177 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %176, i32 0, i32 3
  %178 = load %struct.gv_plex*, %struct.gv_plex** %177, align 8
  %179 = call i32 @gv_update_plex_state(%struct.gv_plex* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @GV_SETSTATE_CONFIG, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %187 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @gv_save_config(i32 %188)
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %190, %160, %152, %150, %58, %43, %35, %22
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @gv_update_plex_state(%struct.gv_plex*) #1

declare dso_local i32 @gv_save_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
