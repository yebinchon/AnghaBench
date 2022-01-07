; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_main_automountd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_main_automountd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }
%struct.autofs_daemon_request = type { i32 }

@AUTOMOUNTD_PIDFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"D:Tdim:o:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"daemon already running, pid: %jd.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot open or create pidfile \22%s\22\00", align 1
@AUTOFS_PATH = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@autofs_fd = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"cannot daemonize\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"waiting for request from the kernel\00", align 1
@AUTOFSREQUEST = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@nchildren = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"AUTOFSREQUEST\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"not forking due to -d flag; will exit after servicing a single request\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"maxproc limit of %d child processes hit; waiting for child process to exit\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"got request; forking child process #%d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_automountd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pidfh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.autofs_daemon_request, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %19 = load i8*, i8** @AUTOMOUNTD_PIDFILE, align 8
  store i8* %19, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 30, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = call i32 (...) @defined_init()
  br label %21

21:                                               ; preds = %51, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %49 [
    i32 68, label %28
    i32 84, label %31
    i32 100, label %34
    i32 105, label %37
    i32 109, label %38
    i32 111, label %41
    i32 118, label %45
    i32 63, label %48
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @defined_parse_and_add(i32 %29)
  br label %51

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %51

34:                                               ; preds = %26
  store i32 1, i32* %17, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %51

37:                                               ; preds = %26
  store i32 1, i32* %18, align 4
  br label %51

38:                                               ; preds = %26
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32 @atoi(i32 %39)
  store i32 %40, i32* %14, align 4
  br label %51

41:                                               ; preds = %26
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @optarg, align 4
  %44 = call i8* @concat(i8* %42, i8 signext 44, i32 %43)
  store i8* %44, i8** %9, align 8
  br label %51

45:                                               ; preds = %26
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %51

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %26, %48
  %50 = call i32 (...) @usage_automountd()
  br label %51

51:                                               ; preds = %49, %45, %41, %38, %37, %34, %31, %28
  br label %21

52:                                               ; preds = %21
  %53 = load i64, i64* @optind, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 (...) @usage_automountd()
  br label %62

62:                                               ; preds = %60, %52
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @log_init(i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call %struct.pidfh* @pidfile_open(i8* %65, i32 384, i64* %7)
  store %struct.pidfh* %66, %struct.pidfh** %5, align 8
  %67 = load %struct.pidfh*, %struct.pidfh** %5, align 8
  %68 = icmp eq %struct.pidfh* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load i32, i32* @errno, align 4
  %71 = load i32, i32* @EEXIST, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %62
  %81 = load i32, i32* @AUTOFS_PATH, align 4
  %82 = load i32, i32* @O_RDWR, align 4
  %83 = load i32, i32* @O_CLOEXEC, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @open(i32 %81, i32 %84)
  store i64 %85, i64* @autofs_fd, align 8
  %86 = load i64, i64* @autofs_fd, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %80
  %89 = load i32, i32* @errno, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* @errno, align 4
  store i32 %93, i32* %16, align 4
  %94 = call i32 @kldload(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @AUTOFS_PATH, align 4
  %99 = load i32, i32* @O_RDWR, align 4
  %100 = load i32, i32* @O_CLOEXEC, align 4
  %101 = or i32 %99, %100
  %102 = call i64 @open(i32 %98, i32 %101)
  store i64 %102, i64* @autofs_fd, align 8
  br label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* @errno, align 4
  br label %105

105:                                              ; preds = %103, %97
  br label %106

106:                                              ; preds = %105, %88, %80
  %107 = load i64, i64* @autofs_fd, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @AUTOFS_PATH, align 4
  %111 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = call i32 @daemon(i32 0, i32 0)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = call i32 @log_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %120 = load %struct.pidfh*, %struct.pidfh** %5, align 8
  %121 = call i32 @pidfile_remove(%struct.pidfh* %120)
  %122 = call i32 @exit(i32 1) #3
  unreachable

123:                                              ; preds = %115
  br label %126

124:                                              ; preds = %112
  %125 = call i32 (...) @lesser_daemon()
  br label %126

126:                                              ; preds = %124, %123
  %127 = load %struct.pidfh*, %struct.pidfh** %5, align 8
  %128 = call i32 @pidfile_write(%struct.pidfh* %127)
  %129 = call i32 (...) @register_sigchld()
  br label %130

130:                                              ; preds = %205, %203, %142, %126
  %131 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %132 = call i32 @memset(%struct.autofs_daemon_request* %10, i32 0, i32 4)
  %133 = load i64, i64* @autofs_fd, align 8
  %134 = load i32, i32* @AUTOFSREQUEST, align 4
  %135 = call i32 @ioctl(i64 %133, i32 %134, %struct.autofs_daemon_request* %10)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %130
  %139 = load i32, i32* @errno, align 4
  %140 = load i32, i32* @EINTR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = call i64 @wait_for_children(i32 0)
  %144 = load i32, i32* @nchildren, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* @nchildren, align 4
  %148 = load i32, i32* @nchildren, align 4
  %149 = icmp sge i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  br label %130

152:                                              ; preds = %138
  %153 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %130
  %155 = load i32, i32* %17, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  br label %205

159:                                              ; preds = %154
  %160 = call i64 @wait_for_children(i32 0)
  %161 = load i32, i32* @nchildren, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* @nchildren, align 4
  %165 = load i32, i32* @nchildren, align 4
  %166 = icmp sge i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  br label %169

169:                                              ; preds = %178, %159
  %170 = load i32, i32* %14, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* @nchildren, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp sge i32 %173, %174
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i1 [ false, %169 ], [ %175, %172 ]
  br i1 %177, label %178, label %190

178:                                              ; preds = %176
  %179 = load i32, i32* %14, align 4
  %180 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  %181 = call i64 @wait_for_children(i32 1)
  %182 = load i32, i32* @nchildren, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* @nchildren, align 4
  %186 = load i32, i32* @nchildren, align 4
  %187 = icmp sge i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  br label %169

190:                                              ; preds = %176
  %191 = load i32, i32* @nchildren, align 4
  %192 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @nchildren, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* @nchildren, align 4
  %195 = call i64 (...) @fork()
  store i64 %195, i64* %6, align 8
  %196 = load i64, i64* %6, align 8
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %190
  %201 = load i64, i64* %6, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %130

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %204, %157
  %206 = load %struct.pidfh*, %struct.pidfh** %5, align 8
  %207 = call i32 @pidfile_close(%struct.pidfh* %206)
  %208 = load i8*, i8** %9, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @handle_request(%struct.autofs_daemon_request* %10, i8* %208, i32 %209)
  br label %130
}

declare dso_local i32 @defined_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @defined_parse_and_add(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i8* @concat(i8*, i8 signext, i32) #1

declare dso_local i32 @usage_automountd(...) #1

declare dso_local i32 @log_init(i32) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i64*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

declare dso_local i32 @log_err(i32, i8*, ...) #1

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lesser_daemon(...) #1

declare dso_local i32 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @register_sigchld(...) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @memset(%struct.autofs_daemon_request*, i32, i32) #1

declare dso_local i32 @ioctl(i64, i32, %struct.autofs_daemon_request*) #1

declare dso_local i64 @wait_for_children(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @pidfile_close(%struct.pidfh*) #1

declare dso_local i32 @handle_request(%struct.autofs_daemon_request*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
