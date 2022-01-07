; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_server.c_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_server.c_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }
%struct.x_passwd = type { i8*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"client tried to modify an NIS entry\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"UID mismatch: client says user %s has UID %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"database says user %s has UID %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"GID mismatch: client says user %s has GID %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"database says user %s has GID %d\00", align 1
@no_chsh = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%s is not a valid shell\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"specified shell contains invalid characters\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"specified gecos field contains invalid characters\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"specified password contains invalid characters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, %struct.x_passwd*)* @validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate(%struct.passwd* %0, %struct.x_passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.x_passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store %struct.x_passwd* %1, %struct.x_passwd** %5, align 8
  %6 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %7 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %15 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %2
  %22 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

23:                                               ; preds = %13
  %24 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %25 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.passwd*, %struct.passwd** %4, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %33 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %36 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %34, i64 %37)
  %39 = load %struct.passwd*, %struct.passwd** %4, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.passwd*, %struct.passwd** %4, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %41, i64 %44)
  store i32 1, i32* %3, align 4
  br label %111

46:                                               ; preds = %23
  %47 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %48 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.passwd*, %struct.passwd** %4, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %56 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %59 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %57, i64 %60)
  %62 = load %struct.passwd*, %struct.passwd** %4, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.passwd*, %struct.passwd** %4, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %64, i64 %67)
  store i32 1, i32* %3, align 4
  br label %111

69:                                               ; preds = %46
  %70 = load i32, i32* @no_chsh, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %74 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ok_shell(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %80 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 1, i32* %3, align 4
  br label %111

83:                                               ; preds = %72, %69
  %84 = load i32, i32* @no_chsh, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %88 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @validchars(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

94:                                               ; preds = %86, %83
  %95 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %96 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @validchars(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

102:                                              ; preds = %94
  %103 = load %struct.x_passwd*, %struct.x_passwd** %5, align 8
  %104 = getelementptr inbounds %struct.x_passwd, %struct.x_passwd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @validchars(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %108, %100, %92, %78, %54, %31, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @yp_error(i8*, ...) #1

declare dso_local i32 @ok_shell(i32) #1

declare dso_local i64 @validchars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
