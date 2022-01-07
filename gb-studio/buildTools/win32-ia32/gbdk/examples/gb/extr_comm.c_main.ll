; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_comm.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_comm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  A      : Send\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"  B      : Receive\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  START  : Send\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  SELECT : Receive\00", align 1
@J_A = common dso_local global i32 0, align 4
@J_B = common dso_local global i32 0, align 4
@J_START = common dso_local global i32 0, align 4
@J_SELECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Sending b... \00", align 1
@_io_out = common dso_local global i8 0, align 1
@_io_status = common dso_local global i64 0, align 8
@IO_SENDING = common dso_local global i64 0, align 8
@IO_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"#%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Receiving b... \00", align 1
@IO_RECEIVING = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"OK\0A%d\0A\00", align 1
@_io_in = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Sending s... \00", align 1
@str = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"Receiving s... \00", align 1
@buffer = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"OK\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %4 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %10

10:                                               ; preds = %0, %183
  %11 = load i32, i32* @J_A, align 4
  %12 = load i32, i32* @J_B, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @J_START, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @J_SELECT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @waitpad(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = call i32 (...) @waitpadup()
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @J_A, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %10
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  %27 = trunc i32 %25 to i8
  store i8 %27, i8* @_io_out, align 1
  %28 = call i32 (...) @send_byte()
  br label %29

29:                                               ; preds = %38, %23
  %30 = load i64, i64* @_io_status, align 8
  %31 = load i64, i64* @IO_SENDING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i64 (...) @joypad()
  %35 = icmp eq i64 %34, 0
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ false, %29 ], [ %35, %33 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %29

39:                                               ; preds = %36
  %40 = load i64, i64* @_io_status, align 8
  %41 = load i64, i64* @IO_IDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @_io_status, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %45, %43
  br label %183

49:                                               ; preds = %10
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @J_B, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %55 = call i32 (...) @receive_byte()
  br label %56

56:                                               ; preds = %65, %53
  %57 = load i64, i64* @_io_status, align 8
  %58 = load i64, i64* @IO_RECEIVING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i64 (...) @joypad()
  %62 = icmp eq i64 %61, 0
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %56

66:                                               ; preds = %63
  %67 = load i64, i64* @_io_status, align 8
  %68 = load i64, i64* @IO_IDLE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @_io_in, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, i64* @_io_status, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %182

77:                                               ; preds = %49
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @J_START, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %132

81:                                               ; preds = %77
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i8*, i8** @str, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %81, %122
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* @_io_out, align 1
  br label %87

87:                                               ; preds = %107, %84
  %88 = call i32 (...) @send_byte()
  br label %89

89:                                               ; preds = %98, %87
  %90 = load i64, i64* @_io_status, align 8
  %91 = load i64, i64* @IO_SENDING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i64 (...) @joypad()
  %95 = icmp eq i64 %94, 0
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %89

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* @_io_status, align 8
  %102 = load i64, i64* @IO_IDLE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = call i64 (...) @joypad()
  %106 = icmp eq i64 %105, 0
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i1 [ false, %100 ], [ %106, %104 ]
  br i1 %108, label %87, label %109

109:                                              ; preds = %107
  %110 = load i64, i64* @_io_status, align 8
  %111 = load i64, i64* @IO_IDLE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64, i64* @_io_status, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %114)
  br label %125

116:                                              ; preds = %109
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %125

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  br label %84

125:                                              ; preds = %121, %113
  %126 = load i64, i64* @_io_status, align 8
  %127 = load i64, i64* @IO_IDLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %125
  br label %181

132:                                              ; preds = %77
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @J_SELECT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %180

136:                                              ; preds = %132
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %138 = load i8*, i8** @buffer, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %136, %169
  %140 = call i32 (...) @receive_byte()
  br label %141

141:                                              ; preds = %150, %139
  %142 = load i64, i64* @_io_status, align 8
  %143 = load i64, i64* @IO_RECEIVING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = call i64 (...) @joypad()
  %147 = icmp eq i64 %146, 0
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i1 [ false, %141 ], [ %147, %145 ]
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %141

151:                                              ; preds = %148
  %152 = load i64, i64* @_io_status, align 8
  %153 = load i64, i64* @IO_IDLE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i64, i64* @_io_status, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %156)
  br label %172

158:                                              ; preds = %151
  %159 = load i32, i32* @_io_in, align 4
  %160 = call i32 @putchar(i32 %159)
  %161 = load i32, i32* @_io_in, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %3, align 8
  store i8 %162, i8* %163, align 1
  %164 = load i8*, i8** %3, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %172

169:                                              ; preds = %158
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %3, align 8
  br label %139

172:                                              ; preds = %168, %155
  %173 = load i64, i64* @_io_status, align 8
  %174 = load i64, i64* @IO_IDLE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i8*, i8** @buffer, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %176, %172
  br label %180

180:                                              ; preds = %179, %132
  br label %181

181:                                              ; preds = %180, %131
  br label %182

182:                                              ; preds = %181, %76
  br label %183

183:                                              ; preds = %182, %48
  %184 = call i32 (...) @waitpadup()
  br label %10
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @waitpad(i32) #1

declare dso_local i32 @waitpadup(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @send_byte(...) #1

declare dso_local i64 @joypad(...) #1

declare dso_local i32 @receive_byte(...) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
