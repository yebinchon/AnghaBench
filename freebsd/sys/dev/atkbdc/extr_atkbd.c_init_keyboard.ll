; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_init_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_init_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KBDC_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"atkbd: unable to get the current command byte value.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"atkbd: the current kbd controller command byte %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"atkbd: unable to set the command byte.\0A\00", align 1
@KBDC_QUIRK_RESET_AFTER_PROBE = common dso_local global i32 0, align 4
@KB_CONF_ALT_SCANCODESET = common dso_local global i32 0, align 4
@KB_OTHER = common dso_local global i32 0, align 4
@KB_101 = common dso_local global i32 0, align 4
@KB_84 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"atkbd: keyboard ID 0x%x (%d)\0A\00", align 1
@KBDC_SET_SCANCODE_SET = common dso_local global i32 0, align 4
@KBD_ACK = common dso_local global i64 0, align 8
@KBD_TRANSLATION = common dso_local global i32 0, align 4
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"atkbd: unable to set the XT keyboard mode.\0A\00", align 1
@KBDC_QUIRK_SETLEDS_ON_INIT = common dso_local global i32 0, align 4
@KBDC_SET_LEDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"atkbd: setleds failed\0A\00", align 1
@KBDC_ENABLE_KBD = common dso_local global i32 0, align 4
@KBD_OVERRIDE_KBD_LOCK = common dso_local global i32 0, align 4
@KBD_ENABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_ENABLE_KBD_INT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"atkbd: unable to enable the keyboard port and intr.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @init_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_keyboard(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @kbdc_lock(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EIO, align 4
  store i32 %16, i32* %4, align 4
  br label %207

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @KBDC_DISABLE_KBD_PORT, align 4
  %20 = call i32 @write_controller_command(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @empty_both_buffers(i32 %21, i32 200)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_controller_command_byte(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @kbdc_lock(i32 %28, i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %4, align 4
  br label %207

33:                                               ; preds = %17
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @setup_kbd_port(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @kbdc_lock(i32 %47, i32 %48)
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %4, align 4
  br label %207

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @KBDC_QUIRK_RESET_AFTER_PROBE, align 4
  %54 = call i64 @HAS_QUIRK(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @atkbd_reset(i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @kbdc_lock(i32 %63, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %4, align 4
  br label %207

67:                                               ; preds = %56, %51
  store i32 -1, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @KB_CONF_ALT_SCANCODESET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* @KB_OTHER, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @get_kbd_id(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %85 [
    i32 16811, label %79
    i32 33707, label %79
    i32 21675, label %79
    i32 33963, label %79
    i32 -1, label %82
  ]

79:                                               ; preds = %73, %73, %73, %73
  %80 = load i32, i32* @KB_101, align 4
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @KB_84, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %86

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %82, %79
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @KBDC_QUIRK_RESET_AFTER_PROBE, align 4
  %97 = call i64 @HAS_QUIRK(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @atkbd_reset(i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @kbdc_lock(i32 %106, i32 %107)
  %109 = load i32, i32* @EIO, align 4
  store i32 %109, i32* %4, align 4
  br label %207

110:                                              ; preds = %99, %94
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %143

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @KBDC_SET_SCANCODE_SET, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @send_kbd_command_and_data(i32 %114, i32 %115, i32 %116)
  %118 = load i64, i64* @KBD_ACK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @KBD_TRANSLATION, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %142

125:                                              ; preds = %113
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @ALLOW_DISABLE_KBD(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ 255, %130 ], [ %132, %131 ]
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @set_controller_command_byte(i32 %126, i32 %134, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @FALSE, align 4
  %139 = call i32 @kbdc_lock(i32 %137, i32 %138)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @EIO, align 4
  store i32 %141, i32* %4, align 4
  br label %207

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142, %110
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @KBDC_QUIRK_SETLEDS_ON_INIT, align 4
  %146 = call i64 @HAS_QUIRK(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @KBDC_SET_LEDS, align 4
  %151 = call i64 @send_kbd_command_and_data(i32 %149, i32 %150, i32 0)
  %152 = load i64, i64* @KBD_ACK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %148, %143
  %157 = load i32, i32* %5, align 4
  %158 = call i64 @ALLOW_DISABLE_KBD(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @KBDC_ENABLE_KBD, align 4
  %163 = call i32 @send_kbd_command(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %156
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %167 = load i32, i32* @KBD_TRANSLATION, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @KBD_OVERRIDE_KBD_LOCK, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @KBD_TRANSLATION, align 4
  %173 = load i32, i32* @KBD_OVERRIDE_KBD_LOCK, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = load i32, i32* @KBD_ENABLE_KBD_PORT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @KBD_ENABLE_KBD_INT, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @set_controller_command_byte(i32 %165, i32 %170, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %203, label %182

182:                                              ; preds = %164
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i64 @ALLOW_DISABLE_KBD(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %194

188:                                              ; preds = %182
  %189 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %190 = load i32, i32* @KBD_TRANSLATION, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @KBD_OVERRIDE_KBD_LOCK, align 4
  %193 = or i32 %191, %192
  br label %194

194:                                              ; preds = %188, %187
  %195 = phi i32 [ 255, %187 ], [ %193, %188 ]
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @set_controller_command_byte(i32 %183, i32 %195, i32 %196)
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @FALSE, align 4
  %200 = call i32 @kbdc_lock(i32 %198, i32 %199)
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %202 = load i32, i32* @EIO, align 4
  store i32 %202, i32* %4, align 4
  br label %207

203:                                              ; preds = %164
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @FALSE, align 4
  %206 = call i32 @kbdc_lock(i32 %204, i32 %205)
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %203, %194, %133, %105, %62, %45, %27, %15
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @write_controller_command(i32, i32) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @setup_kbd_port(i32, i32, i32) #1

declare dso_local i64 @HAS_QUIRK(i32, i32) #1

declare dso_local i64 @atkbd_reset(i32, i32, i32) #1

declare dso_local i32 @get_kbd_id(i32) #1

declare dso_local i64 @send_kbd_command_and_data(i32, i32, i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i64 @ALLOW_DISABLE_KBD(i32) #1

declare dso_local i32 @send_kbd_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
