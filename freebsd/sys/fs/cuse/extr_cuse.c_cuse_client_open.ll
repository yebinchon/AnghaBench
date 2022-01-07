; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.cdev = type { %struct.cuse_server_dev* }
%struct.cuse_server_dev = type { %struct.cuse_dev*, %struct.cuse_server* }
%struct.cuse_dev = type { i32 }
%struct.cuse_server = type { i64, i64, i64, i32 }
%struct.thread = type { i32 }
%struct.cuse_client_command = type { i32, i32, %struct.cuse_client*, %struct.TYPE_3__ }
%struct.cuse_client = type { i32, %struct.cuse_client_command*, %struct.cuse_server*, %struct.cuse_server_dev* }
%struct.TYPE_3__ = type { i32, %struct.cuse_dev* }

@curproc = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_CUSE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cuse_client_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cuse: Cannot set cdevpriv.\0A\00", align 1
@CUSE_CMD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cuse-client-sx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cuse-client-cv\00", align 1
@entry = common dso_local global i32 0, align 4
@CUSE_CMD_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @cuse_client_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cuse_client_command*, align 8
  %11 = alloca %struct.cuse_server_dev*, align 8
  %12 = alloca %struct.cuse_client*, align 8
  %13 = alloca %struct.cuse_server*, align 8
  %14 = alloca %struct.cuse_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %17 = call i32 (...) @cuse_lock()
  %18 = load %struct.cdev*, %struct.cdev** %6, align 8
  %19 = getelementptr inbounds %struct.cdev, %struct.cdev* %18, i32 0, i32 0
  %20 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %19, align 8
  store %struct.cuse_server_dev* %20, %struct.cuse_server_dev** %11, align 8
  %21 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %11, align 8
  %22 = icmp ne %struct.cuse_server_dev* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %11, align 8
  %25 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %24, i32 0, i32 1
  %26 = load %struct.cuse_server*, %struct.cuse_server** %25, align 8
  store %struct.cuse_server* %26, %struct.cuse_server** %13, align 8
  %27 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %11, align 8
  %28 = getelementptr inbounds %struct.cuse_server_dev, %struct.cuse_server_dev* %27, i32 0, i32 0
  %29 = load %struct.cuse_dev*, %struct.cuse_dev** %28, align 8
  store %struct.cuse_dev* %29, %struct.cuse_dev** %14, align 8
  %30 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %31 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %35 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %40 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curproc, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38, %23
  %47 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %48 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  store %struct.cuse_server_dev* null, %struct.cuse_server_dev** %11, align 8
  br label %51

51:                                               ; preds = %46, %38
  br label %53

52:                                               ; preds = %4
  store %struct.cuse_server* null, %struct.cuse_server** %13, align 8
  store %struct.cuse_dev* null, %struct.cuse_dev** %14, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = call i32 (...) @cuse_unlock()
  %55 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %11, align 8
  %56 = icmp eq %struct.cuse_server_dev* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %182

59:                                               ; preds = %53
  %60 = load i32, i32* @M_CUSE, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = load i32, i32* @M_ZERO, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.cuse_client* @malloc(i32 32, i32 %60, i32 %63)
  store %struct.cuse_client* %64, %struct.cuse_client** %12, align 8
  %65 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %66 = icmp eq %struct.cuse_client* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %69 = call i32 @cuse_server_unref(%struct.cuse_server* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %5, align 4
  br label %182

71:                                               ; preds = %59
  %72 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %73 = call i64 @devfs_set_cdevpriv(%struct.cuse_client* %72, i32* @cuse_client_free)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %78 = call i32 @cuse_server_unref(%struct.cuse_server* %77)
  %79 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %80 = load i32, i32* @M_CUSE, align 4
  %81 = call i32 @free(%struct.cuse_client* %79, i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* %5, align 4
  br label %182

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %86 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %11, align 8
  %88 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %89 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %88, i32 0, i32 3
  store %struct.cuse_server_dev* %87, %struct.cuse_server_dev** %89, align 8
  %90 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %91 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %92 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %91, i32 0, i32 2
  store %struct.cuse_server* %90, %struct.cuse_server** %92, align 8
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %121, %83
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @CUSE_CMD_MAX, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %99 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %98, i32 0, i32 1
  %100 = load %struct.cuse_client_command*, %struct.cuse_client_command** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %100, i64 %102
  store %struct.cuse_client_command* %103, %struct.cuse_client_command** %10, align 8
  %104 = load %struct.cuse_dev*, %struct.cuse_dev** %14, align 8
  %105 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %106 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store %struct.cuse_dev* %104, %struct.cuse_dev** %107, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %110 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %113 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %114 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %113, i32 0, i32 2
  store %struct.cuse_client* %112, %struct.cuse_client** %114, align 8
  %115 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %116 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %115, i32 0, i32 1
  %117 = call i32 @sx_init(i32* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %119 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %118, i32 0, i32 0
  %120 = call i32 @cv_init(i32* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %97
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %93

124:                                              ; preds = %93
  %125 = call i32 (...) @cuse_lock()
  %126 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %127 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %126, i32 0, i32 3
  %128 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %129 = load i32, i32* @entry, align 4
  %130 = call i32 @TAILQ_INSERT_TAIL(i32* %127, %struct.cuse_client* %128, i32 %129)
  %131 = load %struct.cuse_server*, %struct.cuse_server** %13, align 8
  %132 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %124
  %136 = load %struct.cdev*, %struct.cdev** %6, align 8
  %137 = getelementptr inbounds %struct.cdev, %struct.cdev* %136, i32 0, i32 0
  %138 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %137, align 8
  %139 = icmp eq %struct.cuse_server_dev* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %124
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %15, align 4
  br label %143

142:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %142, %140
  %144 = call i32 (...) @cuse_unlock()
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = call i32 (...) @devfs_clear_cdevpriv()
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %5, align 4
  br label %182

150:                                              ; preds = %143
  %151 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %152 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %151, i32 0, i32 1
  %153 = load %struct.cuse_client_command*, %struct.cuse_client_command** %152, align 8
  %154 = load i64, i64* @CUSE_CMD_OPEN, align 8
  %155 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %153, i64 %154
  store %struct.cuse_client_command* %155, %struct.cuse_client_command** %10, align 8
  %156 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %157 = call i32 @cuse_cmd_lock(%struct.cuse_client_command* %156)
  %158 = call i32 (...) @cuse_lock()
  %159 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %160 = load %struct.cuse_client*, %struct.cuse_client** %12, align 8
  %161 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cuse_client_send_command_locked(%struct.cuse_client_command* %159, i32 0, i32 0, i32 %162, i32 0)
  %164 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %165 = call i32 @cuse_client_receive_command_locked(%struct.cuse_client_command* %164, i32 0, i32 0)
  store i32 %165, i32* %15, align 4
  %166 = call i32 (...) @cuse_unlock()
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %150
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @cuse_convert_error(i32 %170)
  store i32 %171, i32* %15, align 4
  br label %173

172:                                              ; preds = %150
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %172, %169
  %174 = load %struct.cuse_client_command*, %struct.cuse_client_command** %10, align 8
  %175 = call i32 @cuse_cmd_unlock(%struct.cuse_client_command* %174)
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 (...) @devfs_clear_cdevpriv()
  br label %180

180:                                              ; preds = %178, %173
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %180, %147, %75, %67, %57
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local %struct.cuse_client* @malloc(i32, i32, i32) #1

declare dso_local i32 @cuse_server_unref(%struct.cuse_server*) #1

declare dso_local i64 @devfs_set_cdevpriv(%struct.cuse_client*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.cuse_client*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cuse_client*, i32) #1

declare dso_local i32 @devfs_clear_cdevpriv(...) #1

declare dso_local i32 @cuse_cmd_lock(%struct.cuse_client_command*) #1

declare dso_local i32 @cuse_client_send_command_locked(%struct.cuse_client_command*, i32, i32, i32, i32) #1

declare dso_local i32 @cuse_client_receive_command_locked(%struct.cuse_client_command*, i32, i32) #1

declare dso_local i32 @cuse_convert_error(i32) #1

declare dso_local i32 @cuse_cmd_unlock(%struct.cuse_client_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
