; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@vcpus_active = common dso_local global i32 0, align 4
@cur_vcpu = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GDB_SIGNAL_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_command(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp uge i64 %7, 3
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sge i32 %13, 48
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 57
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (...) @send_empty_response()
  br label %165

41:                                               ; preds = %33, %27, %21, %15, %9, %2
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %163 [
    i32 99, label %45
    i32 68, label %53
    i32 103, label %55
    i32 72, label %57
    i32 109, label %112
    i32 77, label %116
    i32 84, label %120
    i32 113, label %138
    i32 115, label %142
    i32 63, label %156
    i32 71, label %162
    i32 118, label %162
    i32 112, label %162
    i32 80, label %162
    i32 81, label %162
    i32 116, label %162
    i32 88, label %162
    i32 122, label %162
    i32 90, label %162
  ]

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @send_error(i32 %49)
  br label %165

51:                                               ; preds = %45
  %52 = call i32 (...) @gdb_resume_vcpus()
  br label %165

53:                                               ; preds = %41
  %54 = call i32 (...) @send_ok()
  br label %165

55:                                               ; preds = %41
  %56 = call i32 (...) @gdb_read_regs()
  br label %165

57:                                               ; preds = %41
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 103
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 99
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @send_error(i32 %70)
  br label %165

72:                                               ; preds = %63, %57
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i64, i64* %4, align 8
  %76 = sub i64 %75, 2
  %77 = call i32 @parse_threadid(i8* %74, i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, -2
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @send_error(i32 %81)
  br label %165

83:                                               ; preds = %72
  %84 = call i32 @CPU_EMPTY(i32* @vcpus_active)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @send_error(i32 %87)
  br label %165

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %89
  %96 = call i32 @CPU_FFS(i32* @vcpus_active)
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* @cur_vcpu, align 4
  br label %110

98:                                               ; preds = %92
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @CPU_ISSET(i32 %100, i32* @vcpus_active)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* @cur_vcpu, align 4
  br label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = call i32 @send_error(i32 %107)
  br label %165

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %95
  %111 = call i32 (...) @send_ok()
  br label %165

112:                                              ; preds = %41
  %113 = load i8*, i8** %3, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @gdb_read_mem(i8* %113, i64 %114)
  br label %165

116:                                              ; preds = %41
  %117 = load i8*, i8** %3, align 8
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @gdb_write_mem(i8* %117, i64 %118)
  br label %165

120:                                              ; preds = %41
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i64, i64* %4, align 8
  %124 = sub i64 %123, 1
  %125 = call i32 @parse_threadid(i8* %122, i64 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call i32 @CPU_ISSET(i32 %130, i32* @vcpus_active)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128, %120
  %134 = load i32, i32* @EINVAL, align 4
  %135 = call i32 @send_error(i32 %134)
  br label %165

136:                                              ; preds = %128
  %137 = call i32 (...) @send_ok()
  br label %165

138:                                              ; preds = %41
  %139 = load i8*, i8** %3, align 8
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @gdb_query(i8* %139, i64 %140)
  br label %165

142:                                              ; preds = %41
  %143 = load i64, i64* %4, align 8
  %144 = icmp ne i64 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* @EINVAL, align 4
  %147 = call i32 @send_error(i32 %146)
  br label %165

148:                                              ; preds = %142
  %149 = load i32, i32* @cur_vcpu, align 4
  %150 = call i32 @gdb_step_vcpu(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @EOPNOTSUPP, align 4
  %154 = call i32 @send_error(i32 %153)
  br label %165

155:                                              ; preds = %148
  br label %165

156:                                              ; preds = %41
  %157 = call i32 (...) @start_packet()
  %158 = call i32 @append_char(i8 signext 83)
  %159 = load i32, i32* @GDB_SIGNAL_TRAP, align 4
  %160 = call i32 @append_byte(i32 %159)
  %161 = call i32 (...) @finish_packet()
  br label %165

162:                                              ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41
  br label %163

163:                                              ; preds = %41, %162
  %164 = call i32 (...) @send_empty_response()
  br label %165

165:                                              ; preds = %39, %133, %163, %156, %155, %152, %145, %138, %136, %116, %112, %110, %106, %86, %80, %69, %55, %53, %51, %48
  ret void
}

declare dso_local i32 @send_empty_response(...) #1

declare dso_local i32 @send_error(i32) #1

declare dso_local i32 @gdb_resume_vcpus(...) #1

declare dso_local i32 @send_ok(...) #1

declare dso_local i32 @gdb_read_regs(...) #1

declare dso_local i32 @parse_threadid(i8*, i64) #1

declare dso_local i32 @CPU_EMPTY(i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @gdb_read_mem(i8*, i64) #1

declare dso_local i32 @gdb_write_mem(i8*, i64) #1

declare dso_local i32 @gdb_query(i8*, i64) #1

declare dso_local i32 @gdb_step_vcpu(i32) #1

declare dso_local i32 @start_packet(...) #1

declare dso_local i32 @append_char(i8 signext) #1

declare dso_local i32 @append_byte(i32) #1

declare dso_local i32 @finish_packet(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
