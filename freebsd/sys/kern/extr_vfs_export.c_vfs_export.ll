; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, i32, i32, %struct.netexport* }
%struct.netexport = type { i32 }
%struct.export_args = type { i64, i32 }

@MAXSECFLAVORS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@MNT_DELEXPORT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MNT_EXPUBLIC = common dso_local global i32 0, align 4
@M_MOUNT = common dso_local global i32 0, align 4
@MNT_EXPORTED = common dso_local global i32 0, align 4
@MNT_DEFEXPORTED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"export\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_export(%struct.mount* %0, %struct.export_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.export_args*, align 8
  %6 = alloca %struct.netexport*, align 8
  %7 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.export_args* %1, %struct.export_args** %5, align 8
  %8 = load %struct.export_args*, %struct.export_args** %5, align 8
  %9 = getelementptr inbounds %struct.export_args, %struct.export_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.export_args*, %struct.export_args** %5, align 8
  %14 = getelementptr inbounds %struct.export_args, %struct.export_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAXSECFLAVORS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %153

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %21 = load %struct.mount*, %struct.mount** %4, align 8
  %22 = getelementptr inbounds %struct.mount, %struct.mount* %21, i32 0, i32 3
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = call i32 @lockmgr(i32* %22, i32 %23, i32* null)
  %25 = load %struct.mount*, %struct.mount** %4, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 4
  %27 = load %struct.netexport*, %struct.netexport** %26, align 8
  store %struct.netexport* %27, %struct.netexport** %6, align 8
  %28 = load %struct.export_args*, %struct.export_args** %5, align 8
  %29 = getelementptr inbounds %struct.export_args, %struct.export_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MNT_DELEXPORT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %20
  %35 = load %struct.netexport*, %struct.netexport** %6, align 8
  %36 = icmp eq %struct.netexport* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %7, align 4
  br label %139

39:                                               ; preds = %34
  %40 = load %struct.mount*, %struct.mount** %4, align 8
  %41 = getelementptr inbounds %struct.mount, %struct.mount* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MNT_EXPUBLIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = call i32 @vfs_setpublicfs(%struct.mount* null, %struct.netexport* null, %struct.export_args* null)
  %48 = load %struct.mount*, %struct.mount** %4, align 8
  %49 = call i32 @MNT_ILOCK(%struct.mount* %48)
  %50 = load i32, i32* @MNT_EXPUBLIC, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.mount*, %struct.mount** %4, align 8
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mount*, %struct.mount** %4, align 8
  %57 = call i32 @MNT_IUNLOCK(%struct.mount* %56)
  br label %58

58:                                               ; preds = %46, %39
  %59 = load %struct.netexport*, %struct.netexport** %6, align 8
  %60 = call i32 @vfs_free_addrlist(%struct.netexport* %59)
  %61 = load %struct.mount*, %struct.mount** %4, align 8
  %62 = getelementptr inbounds %struct.mount, %struct.mount* %61, i32 0, i32 4
  store %struct.netexport* null, %struct.netexport** %62, align 8
  %63 = load %struct.netexport*, %struct.netexport** %6, align 8
  %64 = load i32, i32* @M_MOUNT, align 4
  %65 = call i32 @free(%struct.netexport* %63, i32 %64)
  store %struct.netexport* null, %struct.netexport** %6, align 8
  %66 = load %struct.mount*, %struct.mount** %4, align 8
  %67 = call i32 @MNT_ILOCK(%struct.mount* %66)
  %68 = load i32, i32* @MNT_EXPORTED, align 4
  %69 = load i32, i32* @MNT_DEFEXPORTED, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.mount*, %struct.mount** %4, align 8
  %73 = getelementptr inbounds %struct.mount, %struct.mount* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.mount*, %struct.mount** %4, align 8
  %77 = call i32 @MNT_IUNLOCK(%struct.mount* %76)
  br label %78

78:                                               ; preds = %58, %20
  %79 = load %struct.export_args*, %struct.export_args** %5, align 8
  %80 = getelementptr inbounds %struct.export_args, %struct.export_args* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MNT_EXPORTED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %78
  %86 = load %struct.netexport*, %struct.netexport** %6, align 8
  %87 = icmp eq %struct.netexport* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @M_MOUNT, align 4
  %90 = load i32, i32* @M_WAITOK, align 4
  %91 = load i32, i32* @M_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call %struct.netexport* @malloc(i32 4, i32 %89, i32 %92)
  store %struct.netexport* %93, %struct.netexport** %6, align 8
  %94 = load %struct.netexport*, %struct.netexport** %6, align 8
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 4
  store %struct.netexport* %94, %struct.netexport** %96, align 8
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.export_args*, %struct.export_args** %5, align 8
  %99 = getelementptr inbounds %struct.export_args, %struct.export_args* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MNT_EXPUBLIC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load %struct.mount*, %struct.mount** %4, align 8
  %106 = load %struct.netexport*, %struct.netexport** %6, align 8
  %107 = load %struct.export_args*, %struct.export_args** %5, align 8
  %108 = call i32 @vfs_setpublicfs(%struct.mount* %105, %struct.netexport* %106, %struct.export_args* %107)
  store i32 %108, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %139

111:                                              ; preds = %104
  %112 = load %struct.mount*, %struct.mount** %4, align 8
  %113 = call i32 @MNT_ILOCK(%struct.mount* %112)
  %114 = load i32, i32* @MNT_EXPUBLIC, align 4
  %115 = load %struct.mount*, %struct.mount** %4, align 8
  %116 = getelementptr inbounds %struct.mount, %struct.mount* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.mount*, %struct.mount** %4, align 8
  %120 = call i32 @MNT_IUNLOCK(%struct.mount* %119)
  br label %121

121:                                              ; preds = %111, %97
  %122 = load %struct.mount*, %struct.mount** %4, align 8
  %123 = load %struct.netexport*, %struct.netexport** %6, align 8
  %124 = load %struct.export_args*, %struct.export_args** %5, align 8
  %125 = call i32 @vfs_hang_addrlist(%struct.mount* %122, %struct.netexport* %123, %struct.export_args* %124)
  store i32 %125, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %139

128:                                              ; preds = %121
  %129 = load %struct.mount*, %struct.mount** %4, align 8
  %130 = call i32 @MNT_ILOCK(%struct.mount* %129)
  %131 = load i32, i32* @MNT_EXPORTED, align 4
  %132 = load %struct.mount*, %struct.mount** %4, align 8
  %133 = getelementptr inbounds %struct.mount, %struct.mount* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.mount*, %struct.mount** %4, align 8
  %137 = call i32 @MNT_IUNLOCK(%struct.mount* %136)
  br label %138

138:                                              ; preds = %128, %78
  br label %139

139:                                              ; preds = %138, %127, %110, %37
  %140 = load %struct.mount*, %struct.mount** %4, align 8
  %141 = getelementptr inbounds %struct.mount, %struct.mount* %140, i32 0, i32 3
  %142 = load i32, i32* @LK_RELEASE, align 4
  %143 = call i32 @lockmgr(i32* %141, i32 %142, i32* null)
  %144 = load %struct.mount*, %struct.mount** %4, align 8
  %145 = getelementptr inbounds %struct.mount, %struct.mount* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @vfs_deleteopt(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.mount*, %struct.mount** %4, align 8
  %149 = getelementptr inbounds %struct.mount, %struct.mount* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @vfs_deleteopt(i32 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %139, %18
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local i32 @vfs_setpublicfs(%struct.mount*, %struct.netexport*, %struct.export_args*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_free_addrlist(%struct.netexport*) #1

declare dso_local i32 @free(%struct.netexport*, i32) #1

declare dso_local %struct.netexport* @malloc(i32, i32, i32) #1

declare dso_local i32 @vfs_hang_addrlist(%struct.mount*, %struct.netexport*, %struct.export_args*) #1

declare dso_local i32 @vfs_deleteopt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
