; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }
%struct.iscsi_daemon_request = type { i32 }

@DEFAULT_PIDFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"P:dl:m:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"daemon already running, pid: %jd.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot open or create pidfile \22%s\22\00", align 1
@ISCSI_PATH = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"cannot daemonize\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"waiting for request from the kernel\00", align 1
@ISCSIDWAIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@nchildren = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"ISCSIDWAIT\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"not forking due to -d flag; will exit after servicing a single request\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"maxproc limit of %d child processes hit; waiting for child process to exit\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"incoming connection; forking child process #%d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pidfh*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.iscsi_daemon_request, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 30, i32* %10, align 4
  store i32 60, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** @DEFAULT_PIDFILE, align 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %45, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %43 [
    i32 80, label %28
    i32 100, label %30
    i32 108, label %33
    i32 109, label %36
    i32 116, label %39
    i32 63, label %42
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %18, align 8
  br label %45

30:                                               ; preds = %26
  store i32 1, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %10, align 4
  br label %45

39:                                               ; preds = %26
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %26, %42
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %39, %36, %33, %30, %28
  br label %21

46:                                               ; preds = %21
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @log_init(i32 %57)
  %59 = load i8*, i8** %18, align 8
  %60 = call %struct.pidfh* @pidfile_open(i8* %59, i32 384, i64* %17)
  store %struct.pidfh* %60, %struct.pidfh** %15, align 8
  %61 = load %struct.pidfh*, %struct.pidfh** %15, align 8
  %62 = icmp eq %struct.pidfh* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @EEXIST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %17, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i8*, i8** %18, align 8
  %73 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* @ISCSI_PATH, align 4
  %76 = load i32, i32* @O_RDWR, align 4
  %77 = call i32 @open(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i32, i32* @errno, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32, i32* @errno, align 4
  store i32 %85, i32* %12, align 4
  %86 = call i32 @kldload(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @ISCSI_PATH, align 4
  %91 = load i32, i32* @O_RDWR, align 4
  %92 = call i32 @open(i32 %90, i32 %91)
  store i32 %92, i32* %9, align 4
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* @errno, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %80, %74
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @ISCSI_PATH, align 4
  %101 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = call i32 @daemon(i32 0, i32 0)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = call i32 @log_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %110 = load %struct.pidfh*, %struct.pidfh** %15, align 8
  %111 = call i32 @pidfile_remove(%struct.pidfh* %110)
  %112 = call i32 @exit(i32 1) #3
  unreachable

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %102
  %115 = load %struct.pidfh*, %struct.pidfh** %15, align 8
  %116 = call i32 @pidfile_write(%struct.pidfh* %115)
  %117 = call i32 (...) @register_sigchld()
  br label %118

118:                                              ; preds = %193, %191, %130, %114
  %119 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %120 = call i32 @memset(%struct.iscsi_daemon_request* %19, i32 0, i32 4)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @ISCSIDWAIT, align 4
  %123 = call i32 @ioctl(i32 %121, i32 %122, %struct.iscsi_daemon_request* %19)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %118
  %127 = load i32, i32* @errno, align 4
  %128 = load i32, i32* @EINTR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = call i64 @wait_for_children(i32 0)
  %132 = load i32, i32* @nchildren, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* @nchildren, align 4
  %136 = load i32, i32* @nchildren, align 4
  %137 = icmp sge i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %118

140:                                              ; preds = %126
  %141 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %118
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  br label %193

147:                                              ; preds = %142
  %148 = call i64 @wait_for_children(i32 0)
  %149 = load i32, i32* @nchildren, align 4
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* @nchildren, align 4
  %153 = load i32, i32* @nchildren, align 4
  %154 = icmp sge i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  br label %157

157:                                              ; preds = %166, %147
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* @nchildren, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp sge i32 %161, %162
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i1 [ false, %157 ], [ %163, %160 ]
  br i1 %165, label %166, label %178

166:                                              ; preds = %164
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  %169 = call i64 @wait_for_children(i32 1)
  %170 = load i32, i32* @nchildren, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* @nchildren, align 4
  %174 = load i32, i32* @nchildren, align 4
  %175 = icmp sge i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  br label %157

178:                                              ; preds = %164
  %179 = load i32, i32* @nchildren, align 4
  %180 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @nchildren, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @nchildren, align 4
  %183 = call i64 (...) @fork()
  store i64 %183, i64* %16, align 8
  %184 = load i64, i64* %16, align 8
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %178
  %189 = load i64, i64* %16, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %118

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %145
  %194 = load %struct.pidfh*, %struct.pidfh** %15, align 8
  %195 = call i32 @pidfile_close(%struct.pidfh* %194)
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @handle_request(i32 %196, %struct.iscsi_daemon_request* %19, i32 %197)
  br label %118
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @log_init(i32) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i64*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

declare dso_local i32 @log_err(i32, i8*, ...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @register_sigchld(...) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @memset(%struct.iscsi_daemon_request*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_daemon_request*) #1

declare dso_local i64 @wait_for_children(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @pidfile_close(%struct.pidfh*) #1

declare dso_local i32 @handle_request(i32, %struct.iscsi_daemon_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
