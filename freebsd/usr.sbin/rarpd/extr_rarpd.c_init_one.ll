; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_init_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_info = type { i8*, i32, i64, i64, i32, %struct.if_info* }
%struct.ifaddrs = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@iflist = common dso_local global %struct.if_info* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"malloc: %m\00", align 1
@pidfile_fh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddrs*, i8*, i32)* @init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_one(%struct.ifaddrs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_info*, align 8
  %8 = alloca %struct.if_info*, align 8
  %9 = alloca %struct.sockaddr_dl*, align 8
  %10 = alloca i32, align 4
  store %struct.ifaddrs* %0, %struct.ifaddrs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %12 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %40 [
    i32 131, label %17
    i32 130, label %22
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %201

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %3, %21
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %31 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFF_LOOPBACK, align 4
  %34 = load i32, i32* @IFF_POINTOPOINT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %22
  br label %201

39:                                               ; preds = %29
  br label %41

40:                                               ; preds = %3
  br label %201

41:                                               ; preds = %39
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %46 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcmp(i32 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %201

52:                                               ; preds = %44, %41
  %53 = load %struct.if_info*, %struct.if_info** @iflist, align 8
  store %struct.if_info* %53, %struct.if_info** %7, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load %struct.if_info*, %struct.if_info** %7, align 8
  %56 = icmp ne %struct.if_info* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %59 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.if_info*, %struct.if_info** %7, align 8
  %62 = getelementptr inbounds %struct.if_info, %struct.if_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i32 %60, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %72

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.if_info*, %struct.if_info** %7, align 8
  %70 = getelementptr inbounds %struct.if_info, %struct.if_info* %69, i32 0, i32 5
  %71 = load %struct.if_info*, %struct.if_info** %70, align 8
  store %struct.if_info* %71, %struct.if_info** %7, align 8
  br label %54

72:                                               ; preds = %66, %54
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.if_info*, %struct.if_info** %7, align 8
  %77 = icmp ne %struct.if_info* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %201

79:                                               ; preds = %75, %72
  %80 = load %struct.if_info*, %struct.if_info** %7, align 8
  %81 = icmp eq %struct.if_info* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %79
  %83 = call i64 @malloc(i32 48)
  %84 = inttoptr i64 %83 to %struct.if_info*
  store %struct.if_info* %84, %struct.if_info** %7, align 8
  %85 = load %struct.if_info*, %struct.if_info** %7, align 8
  %86 = icmp eq %struct.if_info* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @LOG_ERR, align 4
  %89 = call i32 @logmsg(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @pidfile_fh, align 4
  %91 = call i32 @pidfile_remove(i32 %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %82
  %94 = load %struct.if_info*, %struct.if_info** %7, align 8
  %95 = call i32 @bzero(%struct.if_info* %94, i32 48)
  %96 = load %struct.if_info*, %struct.if_info** %7, align 8
  %97 = getelementptr inbounds %struct.if_info, %struct.if_info* %96, i32 0, i32 1
  store i32 -1, i32* %97, align 8
  %98 = load %struct.if_info*, %struct.if_info** %7, align 8
  %99 = getelementptr inbounds %struct.if_info, %struct.if_info* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %102 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @strlcpy(i8* %100, i32 %103, i32 8)
  %105 = load %struct.if_info*, %struct.if_info** @iflist, align 8
  %106 = load %struct.if_info*, %struct.if_info** %7, align 8
  %107 = getelementptr inbounds %struct.if_info, %struct.if_info* %106, i32 0, i32 5
  store %struct.if_info* %105, %struct.if_info** %107, align 8
  %108 = load %struct.if_info*, %struct.if_info** %7, align 8
  store %struct.if_info* %108, %struct.if_info** @iflist, align 8
  br label %140

109:                                              ; preds = %79
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %109
  %113 = load %struct.if_info*, %struct.if_info** %7, align 8
  %114 = getelementptr inbounds %struct.if_info, %struct.if_info* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %112
  %118 = call i64 @malloc(i32 48)
  %119 = inttoptr i64 %118 to %struct.if_info*
  store %struct.if_info* %119, %struct.if_info** %8, align 8
  %120 = load %struct.if_info*, %struct.if_info** %8, align 8
  %121 = icmp eq %struct.if_info* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @LOG_ERR, align 4
  %124 = call i32 @logmsg(i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @pidfile_fh, align 4
  %126 = call i32 @pidfile_remove(i32 %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %117
  %129 = load %struct.if_info*, %struct.if_info** %8, align 8
  %130 = load %struct.if_info*, %struct.if_info** %7, align 8
  %131 = call i32 @memcpy(%struct.if_info* %129, %struct.if_info* %130, i32 48)
  %132 = load %struct.if_info*, %struct.if_info** %8, align 8
  %133 = getelementptr inbounds %struct.if_info, %struct.if_info* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 8
  %134 = load %struct.if_info*, %struct.if_info** @iflist, align 8
  %135 = load %struct.if_info*, %struct.if_info** %8, align 8
  %136 = getelementptr inbounds %struct.if_info, %struct.if_info* %135, i32 0, i32 5
  store %struct.if_info* %134, %struct.if_info** %136, align 8
  %137 = load %struct.if_info*, %struct.if_info** %8, align 8
  store %struct.if_info* %137, %struct.if_info** @iflist, align 8
  %138 = load %struct.if_info*, %struct.if_info** %8, align 8
  store %struct.if_info* %138, %struct.if_info** %7, align 8
  br label %139

139:                                              ; preds = %128, %112, %109
  br label %140

140:                                              ; preds = %139, %93
  %141 = load i32, i32* %10, align 4
  switch i32 %141, label %201 [
    i32 131, label %142
    i32 130, label %185
  ]

142:                                              ; preds = %140
  %143 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %144 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call %struct.TYPE_5__* @SATOSIN(%struct.TYPE_6__* %145)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.if_info*, %struct.if_info** %7, align 8
  %151 = getelementptr inbounds %struct.if_info, %struct.if_info* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %153 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call %struct.TYPE_5__* @SATOSIN(%struct.TYPE_6__* %154)
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.if_info*, %struct.if_info** %7, align 8
  %160 = getelementptr inbounds %struct.if_info, %struct.if_info* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.if_info*, %struct.if_info** %7, align 8
  %162 = getelementptr inbounds %struct.if_info, %struct.if_info* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %142
  %166 = load %struct.if_info*, %struct.if_info** %7, align 8
  %167 = getelementptr inbounds %struct.if_info, %struct.if_info* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @ipaddrtonetmask(i64 %168)
  %170 = load %struct.if_info*, %struct.if_info** %7, align 8
  %171 = getelementptr inbounds %struct.if_info, %struct.if_info* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %165, %142
  %173 = load %struct.if_info*, %struct.if_info** %7, align 8
  %174 = getelementptr inbounds %struct.if_info, %struct.if_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load %struct.if_info*, %struct.if_info** %7, align 8
  %179 = getelementptr inbounds %struct.if_info, %struct.if_info* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @rarp_open(i8* %180)
  %182 = load %struct.if_info*, %struct.if_info** %7, align 8
  %183 = getelementptr inbounds %struct.if_info, %struct.if_info* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %177, %172
  br label %201

185:                                              ; preds = %140
  %186 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %187 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = bitcast %struct.TYPE_6__* %188 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %189, %struct.sockaddr_dl** %9, align 8
  %190 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %191 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %200 [
    i32 129, label %193
    i32 128, label %193
  ]

193:                                              ; preds = %185, %185
  %194 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %195 = call i32 @LLADDR(%struct.sockaddr_dl* %194)
  %196 = load %struct.if_info*, %struct.if_info** %7, align 8
  %197 = getelementptr inbounds %struct.if_info, %struct.if_info* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bcopy(i32 %195, i32 %198, i32 6)
  br label %200

200:                                              ; preds = %193, %185
  br label %201

201:                                              ; preds = %20, %38, %40, %51, %78, %140, %200, %184
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @logmsg(i32, i8*) #1

declare dso_local i32 @pidfile_remove(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bzero(%struct.if_info*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.if_info*, %struct.if_info*, i32) #1

declare dso_local %struct.TYPE_5__* @SATOSIN(%struct.TYPE_6__*) #1

declare dso_local i64 @ipaddrtonetmask(i64) #1

declare dso_local i32 @rarp_open(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
