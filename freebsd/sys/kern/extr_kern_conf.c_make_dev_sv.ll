; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_sv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.make_dev_args = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"make_dev_sv: both WAITOK and NOWAIT specified\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SI_NAMED = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"make_dev_sv: bad si_name (error=%d, si_name=%s)\00", align 1
@si_list = common dso_local global i32 0, align 4
@MAKEDEV_REF = common dso_local global i32 0, align 4
@MAKEDEV_ETERNAL = common dso_local global i32 0, align 4
@SI_ETERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"make_dev() by driver %s on pre-existing device (min=%x, name=%s)\00", align 1
@devfs_inos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.make_dev_args*, %struct.cdev**, i8*, i32)* @make_dev_sv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_dev_sv(%struct.make_dev_args* %0, %struct.cdev** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.make_dev_args*, align 8
  %7 = alloca %struct.cdev**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev*, align 8
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca %struct.make_dev_args, align 8
  %13 = alloca i32, align 4
  store %struct.make_dev_args* %0, %struct.make_dev_args** %6, align 8
  store %struct.cdev** %1, %struct.cdev*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call i32 @bzero(%struct.make_dev_args* %12, i32 40)
  %15 = load %struct.make_dev_args*, %struct.make_dev_args** %6, align 8
  %16 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 40, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %187

22:                                               ; preds = %4
  %23 = load %struct.make_dev_args*, %struct.make_dev_args** %6, align 8
  %24 = load %struct.make_dev_args*, %struct.make_dev_args** %6, align 8
  %25 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bcopy(%struct.make_dev_args* %23, %struct.make_dev_args* %12, i32 %26)
  %28 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %33, %22
  %40 = phi i1 [ true, %22 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.cdev* @devfs_alloc(i32 %44)
  store %struct.cdev* %45, %struct.cdev** %11, align 8
  %46 = load %struct.cdev*, %struct.cdev** %11, align 8
  %47 = icmp eq %struct.cdev* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %5, align 4
  br label %187

50:                                               ; preds = %39
  %51 = call i32 (...) @dev_lock()
  %52 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @prep_cdevsw(%struct.TYPE_2__* %53, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = call i32 (...) @dev_unlock()
  %61 = load %struct.cdev*, %struct.cdev** %11, align 8
  %62 = call i32 @devfs_free(%struct.cdev* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %187

64:                                               ; preds = %50
  %65 = load %struct.cdev*, %struct.cdev** %11, align 8
  %66 = call %struct.cdev* @newdev(%struct.make_dev_args* %12, %struct.cdev* %65)
  store %struct.cdev* %66, %struct.cdev** %10, align 8
  %67 = load %struct.cdev*, %struct.cdev** %10, align 8
  %68 = getelementptr inbounds %struct.cdev, %struct.cdev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SI_NAMED, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %64
  %74 = load %struct.cdev*, %struct.cdev** %10, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @prep_devname(%struct.cdev* %74, i8* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.cdev*, %struct.cdev** %10, align 8
  %89 = getelementptr inbounds %struct.cdev, %struct.cdev* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load %struct.cdev*, %struct.cdev** %10, align 8
  %94 = load %struct.cdev*, %struct.cdev** %11, align 8
  %95 = icmp eq %struct.cdev* %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.cdev*, %struct.cdev** %10, align 8
  %98 = load i32, i32* @si_list, align 4
  %99 = call i32 @LIST_REMOVE(%struct.cdev* %97, i32 %98)
  %100 = call i32 (...) @dev_unlock()
  %101 = load %struct.cdev*, %struct.cdev** %10, align 8
  %102 = call i32 @devfs_free(%struct.cdev* %101)
  br label %105

103:                                              ; preds = %92
  %104 = call i32 (...) @dev_unlock()
  br label %105

105:                                              ; preds = %103, %96
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %187

107:                                              ; preds = %73
  br label %108

108:                                              ; preds = %107, %64
  %109 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAKEDEV_REF, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.cdev*, %struct.cdev** %10, align 8
  %116 = call i32 @dev_refl(%struct.cdev* %115)
  br label %117

117:                                              ; preds = %114, %108
  %118 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @SI_ETERNAL, align 4
  %125 = load %struct.cdev*, %struct.cdev** %10, align 8
  %126 = getelementptr inbounds %struct.cdev, %struct.cdev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %117
  %130 = load %struct.cdev*, %struct.cdev** %10, align 8
  %131 = getelementptr inbounds %struct.cdev, %struct.cdev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SI_NAMED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 6
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cdev*, %struct.cdev** %10, align 8
  %143 = call i32 @dev2unit(%struct.cdev* %142)
  %144 = load %struct.cdev*, %struct.cdev** %10, align 8
  %145 = call i32 @devtoname(%struct.cdev* %144)
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @KASSERT(i32 %137, i8* %147)
  %149 = load i32, i32* @SI_NAMED, align 4
  %150 = load %struct.cdev*, %struct.cdev** %10, align 8
  %151 = getelementptr inbounds %struct.cdev, %struct.cdev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %129
  %158 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @crhold(i32* %159)
  %161 = load %struct.cdev*, %struct.cdev** %10, align 8
  %162 = getelementptr inbounds %struct.cdev, %struct.cdev* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %129
  %164 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.cdev*, %struct.cdev** %10, align 8
  %167 = getelementptr inbounds %struct.cdev, %struct.cdev* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cdev*, %struct.cdev** %10, align 8
  %171 = getelementptr inbounds %struct.cdev, %struct.cdev* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cdev*, %struct.cdev** %10, align 8
  %175 = getelementptr inbounds %struct.cdev, %struct.cdev* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.cdev*, %struct.cdev** %10, align 8
  %177 = call i32 @devfs_create(%struct.cdev* %176)
  %178 = load i32, i32* @devfs_inos, align 4
  %179 = call i32 @clean_unrhdrl(i32 %178)
  %180 = call i32 (...) @dev_unlock_and_free()
  %181 = load %struct.cdev*, %struct.cdev** %10, align 8
  %182 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @notify_create(%struct.cdev* %181, i32 %183)
  %185 = load %struct.cdev*, %struct.cdev** %10, align 8
  %186 = load %struct.cdev**, %struct.cdev*** %7, align 8
  store %struct.cdev* %185, %struct.cdev** %186, align 8
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %163, %105, %59, %48, %20
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @bzero(%struct.make_dev_args*, i32) #1

declare dso_local i32 @bcopy(%struct.make_dev_args*, %struct.make_dev_args*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.cdev* @devfs_alloc(i32) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @prep_cdevsw(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @devfs_free(%struct.cdev*) #1

declare dso_local %struct.cdev* @newdev(%struct.make_dev_args*, %struct.cdev*) #1

declare dso_local i32 @prep_devname(%struct.cdev*, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.cdev*, i32) #1

declare dso_local i32 @dev_refl(%struct.cdev*) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @devfs_create(%struct.cdev*) #1

declare dso_local i32 @clean_unrhdrl(i32) #1

declare dso_local i32 @dev_unlock_and_free(...) #1

declare dso_local i32 @notify_create(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
